# Function::Composite

This gem provides a syntax sugar for `Symbol` with `Proc#<<` and `Proc#>>`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'function-composite'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install function-composite

## Usage

```ruby
require 'function-composite'
using Function::Composite

p %w{72 101 108 108 111}.map(&:to_i >> :chr) #=> ["H", "e", "l", "l", "o"]

p %w{72 101 108 108 111}.map(&proc { |s| s.to_i } >> :chr) #=> ["H", "e", "l", "l", "o"]

h = { Alice: 30, Bob: 60, Cris: 90 }
p %w{Alice Bob Cris}.map(&(:to_sym >> h)) #=> [30, 60, 90]
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nobu/function-composite.
