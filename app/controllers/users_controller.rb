class UsersController < ApplicationController
	before_filter :authenticate_user!, :except => :new

	def index
		@users = User.all
	end

	def new
		@user = User.new()
		@gmessage = GuestMessage.new()
		@gmessages = GuestMessage.all
		#new.html.erb
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			redirect_to :root
		else
			@gmessage = GuestMessage.new()
			render 'new'
		end
	end
end
