class CadastroUsuario < ActiveRecord::Base
	validates :senha, presence: true, length: { minimum: 6 }
	validates :password_digest, presence: true, length: { minimum: 6 }

  def senha=(new_password)
    @senha = new_password
    self.encrypted_password = password(@senha) if @senha.present?
  end

  private

  def password(password)
    ::BCrypt::Password.create(password)
  end
end
