class Usuario < ActiveRecord::Base
	validates_presence_of :nome, :senha

	def self.authenticate(username, password)
	    find(:first, :conditions=>["nome = ? AND senha = ?", username, password]) 
	 end 
end
