require "equalizer/version"

module Equalizer
  def equalize(*args)
    build_eq(args)
    build_eql_alias
    build_hash(args)
  end

  def build_eq(args)
    define_method(:==) do |other|
      args.each do |a|
        str = "@#{a}" # Do not do interpolation second time
        unless instance_variable_get(str) == other.instance_variable_get(str)
          return false
        end
      end
      return true
    end
  end

  def build_eql_alias
    instance_eval do
      alias_method :eql?, :==
    end
  end

  def build_hash(args)
    define_method(:hash) do
      args.each_with_object([self.class]) do |arg, obj|
        obj << instance_variable_get("@#{arg}")
      end.hash
    end
  end
end
