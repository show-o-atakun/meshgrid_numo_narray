# Meshgrid

## Installation

```ruby
gem 'meshgrid'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install meshgrid

## Usage

Here are some examples:

```ruby
require "meshgrid"
require "numo/narray"

x = Numo::Int32[0..5]
y = Numo::Int32[0..8]
mg = Meshgrid.meshgrid(x, y)
p mg
```

Then you'll find that mg is 2D Array contains two grid-shaped(X 0..5, Y 0..8) Numo::Int32 NArrays.

You can generate 3D Mesh with same literature. That is:  
```ruby
require "meshgrid"
require "numo/narray"

x = Numo::Int32[0..5]
y = Numo::Int32[0..8]
z = Numo::Int32[0..10]
mg = Meshgrid.meshgrid(x, y, z)
p mg
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/meshgrid. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/meshgrid/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Meshgrid project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/meshgrid/blob/master/CODE_OF_CONDUCT.md).
