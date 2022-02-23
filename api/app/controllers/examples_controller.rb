class ExamplesController < ApplicationController
	def index
		puts "index"
		@ex = [{ "ok" =>  true }, { "ok" =>  false }, { "ok" =>  true }]
	end

	def show
		puts "show"
		@ex = { "ok" => params[:id] }
	end

	def create
		puts "create"
		@ex = Example.create(name: params[:name], age: params[:age], description: params[:description])
	end
end
