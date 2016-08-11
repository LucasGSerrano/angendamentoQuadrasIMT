class CreateUsers < ActiveRecord::Migration
	def createTableUsers
		create_table :users do |user|
			user.string :username
			user.string :password
		end
	end
end

#after doing this run "rake db:create_table" and "rake db:migrate"