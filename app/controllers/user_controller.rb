class UsersController < ApplicationController
	def index
		@users = User.all
	end

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
end
