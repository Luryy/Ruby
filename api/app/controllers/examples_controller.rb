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

	def update
		@ex = Example.find(params[:id])
		@ex.name = params[:name]
		@ex.age = params[:age]
		@ex.description = params[:description]
		@ex.save
	end

	def destroy
		puts "destroy"
		Example.destroy params[:id]
		render status: 204, json: {}
	end

	def search_name
		puts "search_name"
		@exs = Example.where "name like ?", "#{params[:name]}%"
	end
end
