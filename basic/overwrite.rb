# Overriding Array

class Array
  attr_reader :max_necessary
  def << (item)
    push (item)
    if @max_necessary.nil? || @max_necessary < size
      @max_necessary = size
    end
    self
  end
end

items = [1 , 2 , 3, :any]
items << :test
puts items.max_necessary

# Using Module and Extends

module Contador
  attr_reader :max_necessary_module

  def << (item)
    push (item)
    if @max_necessary_module.nil? || @max_necessary_module < size
      @max_necessary_module = size
    end
    self
  end

  # Method missing and responde to concept by overwriting
  def method_missing(name)
    matcher = name.to_s.match "(.+)_missing_(.+)"

    if matcher
		puts "#{matcher[1]} #{matcher[2]}"
    else
		puts "method: #{name} not_exist"
        super
    end
  end

  def respond_to?(name)
      name.to_s.match ("(.+)_missing_(.+)") || super
   end
end

items.extend Contador
items << :test_module
puts items.max_necessary_module
# puts items.max_necessary
items.test_missing_param
puts items.respond_to?(:test_missing_param)
puts items.respond_to?(:max_necessary_module)
# items.not_exist
puts items.respond_to?(:not_exist)
