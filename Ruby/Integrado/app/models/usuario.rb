class Usuario < ActiveRecord::Base

	def authenticate(username, password)
		if self.nome == username && self.senha == password
	 		self
		end
	end
end
