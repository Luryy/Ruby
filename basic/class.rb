class Cart
	@@id = 0
	def initialize(year, name)
		@year = year
		@name = name
	end

	def getName
		puts @name
	end

	def setName(name)
		@name = name
	end

	def info
		puts "#{@name} #{@year} #@@id"
	end

end

cart = Cart.new(2021, "lury")
cart.getName
cart.setName("lucas")
cart.info
