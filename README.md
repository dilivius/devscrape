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
sc = Scraper::Codecademy.new('HTML', 'JavaScript', 'Command Line', 'Ruby', 'Rails', 'Git', email: 'email@example.com', password: 'password')
sc.get_course_completion_percentage
```

**Output:**

```
 => {"JavaScript"=>"100", "HTML"=>"100", "Command Line"=>"100", "Ruby"=>"100", "Rails"=>"100", "Git"=>"100"}
```

For clarification, during initialization you pass in the full list of courses that you want to check on, followed by the email and password *(as keyword arguments)*. The `get_course_completion_percentage` method will return an object that has the key of the course and the percent complete as the value.


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/devscrape. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

