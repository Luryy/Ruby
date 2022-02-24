class ExampleRelationsController < ApplicationController
	def index
		@ex_rels = ExampleRelation.all
	end

	def show
		@ex_rel = ExampleRelation.find(params[:id])
	end

	def create
		ex_params = params.require(:ex_rel).permit(:url)
		@ex_rel = ExampleRelation.new ex_params
		was_saved = @ex_rel.save
		unless was_saved
			render :json => { :errors => @ex_rel.errors.full_messages }, :status => 412
		end
	end

	def update
		@ex_rel = ExampleRelation.find(params[:id])
		@ex_rel.url = params[:ex_rel][:url]
		was_saved = @ex_rel.save
		unless was_saved
			render :json => { :errors => @ex_rel.errors.full_messages }, :status => 412
		end
	end

	def destroy
		ExampleRelation.destroy params[:id]
		render status: 204, json: {}
	end
end
