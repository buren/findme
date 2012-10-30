class Interest < ActiveRecord::Base
	has_many :skills
	has_many :users, :through => :skills

	validates :name, :presence => true, :uniqueness => true, :length => { :minimum => 2 }

	before_save :default_values
  	def default_values
    	self.upvotes ||= 0
  	end
end
