class UsersController < ApplicationController
	def new
		@user = User.new()
		#user.html.erb
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			redirect_to :root
		else
			render 'users'
		end
	end

	def login
		@user = User.new()
	end
end
