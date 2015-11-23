class RegistrationsController < Devise::RegistrationsController


  respond_to :json

  def create
  	@user = User.new(name: params[:name], email: params[:email], password: params[:password], funds: params[:funds])
	if @user.save
		render 'users/me'
	else
		warden.custom_failure!
		render :json => user.errors, :status => 422
	end
  end

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :name, :funds)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :name, :funds)
  end

end
