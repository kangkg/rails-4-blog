class UsersController < ApplicationController

	def new 
		@user = User.new()
	end

	def create 
		@user = User.create(user_params)
	end

	def new 
		# @users = User.all
	end

	private

	def user_params
		params.require(:user).permit(:username, :password, :password_confirmation)
	end

end

# get '/users/' do
# 	@user = User.all
# 	erb :'users/index'
# end