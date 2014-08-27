require "equalizer/version"

# Defines equality methods
module Equalizer
  # Method that is called on extendend class
  # It calls methods that defines equality methods
  #
  # == Parameters:
  # args::
  #   Arguments passed from class body
  def equalize(*args)
    build_eq(args)
    build_eql_alias
    build_hash(args)
  end

  private

  # Defines == method
  def build_eq(args)
    define_method(:==) do |other|
      flag = true # rbx
      args.each do |a|
        str = "@#{a}" # Do not do interpolation second time
        unless instance_variable_get(str) == other.instance_variable_get(str)
          flag = false
          break
        end
      end
      return flag
    end
  end

  # Defines eql? as aliast to ==
  def build_eql_alias
    instance_eval do
      alias_method :eql?, :==
    end
  end

  # Defines hash method
  #
  # Hash method return hash of array of class name and attributes
  def build_hash(args)
    define_method(:hash) do
      args.map { |arg| instance_variable_get("@#{arg}") }.unshift(self.class).hash
    end
  end
end
