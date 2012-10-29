class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			session[:user_id] = @user.id
			redirect_to root_url, notice: "Welcome to Find.me, go add some interests!"
		else
			render "new"
		end
	end
end
