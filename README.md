# Devscrape

Utilize the Devscrape gem to get progress updates on popular coding sites, right now the sites that are supported are:

- CodeCademy


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'devscrape'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install devscrape


## Usage

### Example

```ruby
sc = Scraper::Codecademy.new(email: 'your@email.com', password: 'password')
sc.get_course_completion_percentage
```

**Output:**

# >> Course: JavaScript - Javascript IconJavaScript 100% - Percent Complete: 100
# >> Course: HTML - Web IconHTML & CSS100% - Percent Complete: 100
# >> Course: Command Line - Command LineLearn the Command Line100% - Percent Complete: 100
# >> Course: Ruby IconRuby - Ruby IconRuby100% - Percent Complete: 100
# >> Course: Rails IconLearn Ruby - Rails IconLearn Ruby on Rails100% - Percent Complete: 100
# >> Course: Git - Git IconLearn Git100% - Percent Complete: 100
# >> Course: Sass - SassLearn Sass100% - Percent Complete: 100
# >> Course: JQuery - JQuery IconjQuery100% - Percent Complete: 100
# >> Course: AngularJS - Angular JSLearn AngularJS 1.X100% - Percent Complete: 100
# >> Course: JavaScript - Javascript IconLearn JavaScript100% - Percent Complete: 100


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/devscrape. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

