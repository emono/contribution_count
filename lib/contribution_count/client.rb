module ContributionCount
  class Client
    class NoAccountError < StandardError; end
    class NoDataError < StandardError; end

    attr_reader :url
    URL = "https://github.com/users/"
    def initialize(account_name)
      @url = URL + account_name + "/contributions"
    end

    def today
      today = Date.today.to_s
      count_hash[today]
    end

    def contribution_today?
      return false if today == 0
      true
    end

    def yesterday
      yesterday = (Date.today - 1).to_s
      count_hash[yesterday]
    end

    def all
      count_hash
    end

    def date(date)
      return if date.nil?
      count = count_hash[date]
      raise NoDataError if count.nil?
      count
    end

    def contribution?(date_str)
      return false if date(date_str) == 0
      true
    end

    def today_contribution_notify_line
      return if today.nil?
      message = "today_contribution_count: #{today}"
      Line::Notify::Client.message(message: message)
    end

    private
      def html
        begin
          Nokogiri::HTML.parse(fetch_html, nil, nil)
        rescue OpenURI::HTTPError
          raise NoAccountError
        end
      end

      def fetch_html
        open(url) do |f|
          charset = f.charset
          f.read
        end
      end

      def count_hash
        html.css('.day').map{|row|
          date = row.attribute('data-date').value
          count = row.attribute('data-count').value.to_i
          [date, count]
        }.to_h
      end
  end
end