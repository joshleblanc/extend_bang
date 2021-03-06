# ExtendBang

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'extend_bang'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install extend_bang

## Usage

This gems add the `extend!` method to `Object`. This method behaves the same way as `extend`, except overrides existing methods.

Simply add `require "extend_bang"` to the top of your file to get started. 
If you're using rails, the autoloading should handle this for you.

```ruby
require "extend_bang"

module Foo
  def self.test
    "Foo Test"
  end
end

module Bar
  def test
    "Bar Test"
  end
end

# Here we extend `Foo`'s singleton class with `Bar`.
Foo.extend Bar

# We can see here that although we re-define `test`, it maintains `Foo`'s initial implementation.
p Foo.test 
# => "Foo Test"

# Now, if we use `#extend!`, we can make it override the method

Foo.extend! Bar
p Foo.test
# => "Bar Test"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/extend_bang. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/extend_bang/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ExtendBang project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/extend_bang/blob/master/CODE_OF_CONDUCT.md).
