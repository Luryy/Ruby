module Cart
	@@id = 0

	def getName
		puts @name
	end

	def setName(name)
		@name = name
	end

	def Cart.getId
		puts @@id
	end

	def info
		puts "#{@name} #@@id"
	end

	def self.exportInfo
		puts "#{@name} #@@id"
		"#{@name} #@@id"
	end

end

Cart.getId
# Cart.getName
# Cart.setName("lucas")
# Cart.info
Cart.exportInfo
