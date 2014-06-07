class GuestMessagesController < ApplicationController
  def create
  	@gmessage = GuestMessage.new(params[:guest_message])
  	if @gmessage.save
  		redirect_to :root
  	else
  		redirect_to :root
  	end
  end
end
