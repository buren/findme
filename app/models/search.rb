class Search < ActiveRecord::Base

	def users
		@users ||= find_users
	end

private
	
	def find_users
		users = User.order(:email)
		users = users.where("email like ?", "%#{keywords}%") if keywords.present?
		users = users.where("city like ?", "%#{keywords}%") if city.present?
		users
	end

end
