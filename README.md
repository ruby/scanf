# scanf

scanf is an implementation of the C function scanf(3), modified as necessary for Ruby compatibility.

the methods provided are String#scanf, IO#scanf, and Kernel#scanf. Kernel#scanf is a wrapper around TDIN.scanf.  IO#scanf can be used on any IO stream, including file handles and sockets. scanf can be called either with or without a block.

Scanf scans an input string or stream according to a <b>format</b>, as described below in Conversions, and returns an array of matches between the format and the input.  The format is defined in a string, and is similar (though not identical) to the formats used in Kernel#printf and Kernel#sprintf.

The format may contain <b>conversion specifiers</b>, which tell scanf what form (type) each particular matched substring should be converted to (e.g., decimal integer, floating point number, literal string,
etc.)  The matches and conversions take place from left to right, and the conversions themselves are returned as an array.

The format string may also contain characters other than those in the conversion specifiers.  White space (blanks, tabs, or newlines) in the format string matches any amount of white space, including none, in the input.  Everything else matches only itself.

Scanning stops, and scanf returns, when any input character fails to match the specifications in the format string, or when input is exhausted, or when everything in the format string has been
matched. All matches found up to the stopping point are returned in the return array (or yielded to the block, if a block was given).

#Installation

Add this line to your application's Gemfile:

```ruby
gem 'scanf'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install scanf

#Usage

```
require 'scanf'

# String#scanf and IO#scanf take a single argument, the format string
array = a_string.scanf("%d%s")
array = an_io.scanf("%d%s")

# Kernel#scanf reads from STDIN
array = scanf("%d%s")
```

#Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

#Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ruby/scanf.


#License

The gem is available as open source under the terms of the [2-Clause BSD License](https://opensource.org/licenses/BSD-2-Clause).
