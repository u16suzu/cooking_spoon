# CookingSpoon
cooking_spoon gem is usefull for showing cooking spoon unit in recipe.

[![Gem Version](https://badge.fury.io/rb/cooking_spoon.svg)](https://badge.fury.io/rb/cooking_spoon)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cooking_spoon'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cooking_spoon

## Usage

```ruby
# Float
CookingSpoon::quantity_and_unit(1.5, :big_spoon) # => "大さじ1と1/2"

# String
CookingSpoon::quantity_and_unit("5/2", :small_spoon) # => "小さじ2と1/2"

# Rational
CookingSpoon::quantity_and_unit(Rational(1, 2), :small_spoon) # => "小さじ1/2"
CookingSpoon::quantity_and_unit(Rational(3, 2), :small_spoon) # => "小さじ1と1/2"
CookingSpoon::quantity_and_unit(Rational(5, 2), :small_spoon) # => "小さじ2と1/2"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Yuichiro Suzuki/cooking_spoon. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

