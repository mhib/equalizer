require 'rspec'
require 'equalizer'
require 'coveralls'
Coveralls.wear!

# Class definitions for tests

# Class with one instance variable
class Pound
  extend Equalizer
  equalize :value
  def initialize(value)
    @value = value
  end
end

# Class with two instance variables
class Point
  extend Equalizer
  equalize :x, :y
  def initialize(x, y)
    @x = x
    @y = y
  end
end

