class Cart
	attr_accessor :public_name, :public_year
	# attr_accessor = attr_reader & attr_writer

	@@id = 0
	def initialize(year, name)
		@year = year
		@name = name
		self.public_year = year # or @public_year
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

	def duplicateCar
		new_car = dup # self.dup is implicity
	end

end

cart = Cart.new(2021, "lury")
cart.getName
cart.public_name = "public lury"
puts cart.public_name
puts cart.public_year
cart.setName("lucas")
cart.info

new_car = cart.duplicateCar
new_car.setName("Yuri")
new_car.info
cart.info
