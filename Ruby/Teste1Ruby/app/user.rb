class User < ActiveRecord::Base
	attr_accessor :password

	validates :username, :presence => true
	validates :password, :confirmation => true
end