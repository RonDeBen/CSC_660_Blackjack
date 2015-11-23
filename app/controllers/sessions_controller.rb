class SessionsController < Devise::SessionsController

	def create
		@user = User.find_by_email(params[:email].downcase)
		@user = nil unless @user.valid_password?(params[:password])
		render 'users/me'
	end

end