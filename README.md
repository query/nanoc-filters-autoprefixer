# Nanoc::Filters::Autoprefixer

A [nanoc filter][nanoc-filter] that processes CSS with [Autoprefixer
Rails][autoprefixer-rails].

[nanoc-filter]: https://nanoc.ws/doc/filters/
[autoprefixer-rails]: https://github.com/ai/autoprefixer-rails

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nanoc-filters-autoprefixer'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install nanoc-filters-autoprefixer

## Usage

Add this line to a Ruby file inside your site's `lib` directory:

```ruby
require 'nanoc/filters/autoprefixer'
```

Then use the `:autoprefixer` filter in your `Rules` file:

```ruby
compile '/**/*.css' do
  filter :autoprefixer, cascade: false
  write :css
end
```

The Autoprefixer documentation has [a list of available
options][autoprefixer-options].

[autoprefixer-options]: https://github.com/postcss/autoprefixer#options

## Contributing

Bug reports and pull requests are welcome on GitHub at
<https://github.com/query/nanoc-filters-autoprefixer>.


## License

The gem is available as open source under the terms of the [MIT License][mit].

[mit]: https://opensource.org/licenses/MIT
