class Interest < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true, :length => { :minimum => 2 }
	
	before_save :default_values
  	def default_values
    	self.upvotes ||= 0
  	end
end
