class User < ActiveRecord::Base
	has_secure_password

	has_many :skills
	has_many :interests, :through => :skills

	attr_accessible :email, :password, :password_confirmation, :city
	validates_presence_of :email, :password, :password_confirmation, :city
	validates_uniqueness_of :email
end
