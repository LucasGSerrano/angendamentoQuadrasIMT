module LoginHelper

	def current_user
    @current_user ||= User.find_by(nome: login[:nome])
  end

	def logged_in?
		!current_user.nil?
	end
end
