class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create_user
		@user = User.new(params[:user])
	end
end