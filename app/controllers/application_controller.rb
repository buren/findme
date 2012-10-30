class ApplicationController < ActionController::Base
  protect_from_forgery

  def new_interests
	@new_interests = Interest.order("created_at desc").limit(15)
  end
  helper_method :new_interests

private

	def authorize
		redirect_to login_url, alert: "Not authed" if current_user.nil?		
	end
	
	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	helper_method :current_user

end
