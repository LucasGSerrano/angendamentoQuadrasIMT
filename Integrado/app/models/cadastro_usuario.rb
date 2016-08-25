class CadastroUsuario < ActiveRecord::Base

	  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, 
         :validatable, :authentication_keys => [:login]

	validates :senha, presence: true, length: { minimum: 6 }
	validates :password_digest, presence: true, length: { minimum: 6 }
end
