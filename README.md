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
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/contribution_count. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ContributionCount project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/contribution_count/blob/master/CODE_OF_CONDUCT.md).
