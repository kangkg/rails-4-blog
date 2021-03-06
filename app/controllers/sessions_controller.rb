class SessionsController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.find_by(username: params[:username])
		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			redirect_to '/'
		else
			render :new
		end
	end

	def delete
		session[:user_id] = nil
	end

end