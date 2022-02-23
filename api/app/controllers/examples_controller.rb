class ExamplesController < ApplicationController
	def index
		puts "index"
		@exs = Example.all
	end

	def show
		puts "show"
		@ex = Example.find(params[:id])
	end

	def create
		puts "create"
		@ex = Example.create(name: params[:name], age: params[:age], description: params[:description])
	end
end
