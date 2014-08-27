# Equalizer [![Build Status](https://travis-ci.org/mhib/equalizer.svg)](https://travis-ci.org/mhib/equalizer) [![Coverage Status](https://coveralls.io/repos/mhib/equalizer/badge.png?branch=master)](https://coveralls.io/r/mhib/equalizer?branch=master) [![Code Climate](https://codeclimate.com/github/mhib/equalizer/badges/gpa.svg)](https://codeclimate.com/github/mhib/equalizer) [![Dependency Status](https://gemnasium.com/mhib/equalizer.svg)](https://gemnasium.com/mhib/equalizer) [![Inline docs](http://inch-ci.org/github/mhib/equalizer.png?branch=master)](http://inch-ci.org/github/mhib/equalizer) [![Seal of approvement](http://img.shields.io/badge/Kotek%27s%20seal%20of%20approvement-%E2%9C%93%20-brightgreen.svg)](https://lh6.googleusercontent.com/-g8QFYQTA-Xg/AAAAAAAAAAI/AAAAAAAAAg0/1F1QNrV9XCM/photo.jpg)

My version of [equalizer gem](https://github.com/dkubb/equalizer/)

## Installation

Download gem file from this repo and run
```
gem build equalizer.gem_spec
gem install ./[gem_name]
```
## Usage
```ruby
require 'equalizer'
class Point
  extend Equalizer
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
