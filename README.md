# Equalizer

My version of [equalizer gem](https://github.com/dkubb/equalizer/)

## Installation

Download gem file from this repo and run
```
gem install ./[gem-name]
```
## Usage
```ruby
class Point
  extend Eqalizer
  equalize(:x, :y)
  def initialize(x, y)
    @x = x
    @y = y
  end
end

zero = Point.new(0, 0)
zero == Point.new(0, 0) # => true
zero == Point.new(1, 0) # => false
zero.eql? Point.new(0, 0) # => true
zero.eql? Point.new(1, 0) # => false
zero.equal? Point.new(0, 0) # => false
zero.equal? Point.new(1, 0) # => false
{ zero => 0 }[Point.new(0, 0)] # => 0
```
## Contributing

1. Fork it ( https://github.com/mhib/equalizer/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
