class InterestsController < ApplicationController
	def new
		@interest = Interest.new	
	end

	def create
		@interest = Interest.new(params[:interest])
		if @interest.save
			redirect_to new_interest_path, notice: "Successfully created interest " + @interest.name						
		else
			render "new"
		end
	end

	def index
		@interests = Interest.order("created_at desc").limit(15)
	end
end
