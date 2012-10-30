class SearchesController < ApplicationController
	def new
	  @search = Search.new
	end

	def create
		@search = Search.create!(params[:search])
		redirect_to @search
	end

	def show
  		@search = Search.find(params[:id])
	end

 	def update
	    @search = Search.find(params[:id])
		if @search.update_attributes(params[:search])
			redirect_to @search, notice: 'Search was successfully updated.'
		else
			render action: "show"
		end
	end

end
