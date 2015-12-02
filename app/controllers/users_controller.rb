class UsersController < ApplicationController

	def update_funds
		@user = User.find_by_id(params[:id])
		@user.funds += params[:bet_result].to_d
		@user.save
		render 'users/me'
	end

end
