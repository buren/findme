class ApplicationController < ActionController::Base
  protect_from_forgery


private

	def authorize
		redirect_to login_url, alert: "Not authed" if current_user.nil?		
	end
	
	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

  def new_interests
		@new_interests ||= Interest.order("created_at desc").limit(15)
  end

  def top_interests
  	@top_interests ||= Interest.order("upvotes desc").limit(15)
  end
	
	helper_method :current_user, :new_interests, :top_interests


end
