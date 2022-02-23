class ExamplesController < ApplicationController
	def index
		puts "index"
		@ex = [{ "ok" =>  true }, { "ok" =>  false }, { "ok" =>  true }]
	end

	def show
		puts "show"
		@ex = { "ok" => params[:id] }
	end
end
