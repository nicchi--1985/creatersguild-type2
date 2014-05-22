class RequestsController < ApplicationController
  def index
  end

  def create
  	@request = Request.new(params[:request])
  	if @request.save
  		redirect_to :root
  	else
  		redirect_to :root
  	end
  end

end
