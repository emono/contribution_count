[![Build Status](https://travis-ci.org/emono/contribution_count.svg?branch=master)](https://travis-ci.org/emono/contribution_count)

# ContributionCount
- GitHub contribution count client
- https://rubygems.org/gems/contribution_count

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'contribution_count'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install contribution_count

## Usage
```ruby
name = "github_account_name"
# 1year
ContributionCount.new(name).all
# today
ContributionCount.new(name).today
# yesterday
ContributionCount.new(name).yesterday
# select date
ContributionCount.new(name).date("yyyy-mm-dd")
# today contribution?
ContributionCount.new(name).contribution_today?
# select date contribution?
ContributionCount.new(name).contribution?("yyyy-mm-dd")
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/contribution_count. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Fork it ( https://github.com/emono/contribution_count )
Create your feature branch (git checkout -b my-new-feature)
Commit your changes (git commit -am 'Add some feature')
Push to the branch (git push origin my-new-feature)
Create a new Pull Request
