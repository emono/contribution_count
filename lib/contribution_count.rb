require 'open-uri'
require 'nokogiri'
require 'date'

require_relative 'contribution_count/version'
require_relative 'contribution_count/count'
require_relative 'contribution_count/client'

module ContributionCount
  class Error < StandardError; end
  def self.new(account_name)
    ContributionCount::Client.new(account_name) 
  end
end
