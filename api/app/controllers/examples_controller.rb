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
		ex_params = {
			name: params[:name],
			age: params[:age],
			description: params[:description],
			example_relation_id: params[:example_relation_id]
		}
		@ex = Example.new ex_params
		was_saved = @ex.save
		unless was_saved
			render :json => { :errors => @ex.errors.full_messages }, :status => 412
		end
	end

	def update
		@ex = Example.find(params[:id])
		@ex.name = params[:name] if params[:name]
		@ex.age = params[:age] if params[:age]
		@ex.description = params[:description] if params[:description]
		was_saved = @ex.save
		unless was_saved
			render :json => { :errors => @ex.errors.full_messages }, :status => 412
		end
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
