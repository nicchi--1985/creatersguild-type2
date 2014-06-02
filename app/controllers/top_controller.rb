class TopController < ApplicationController
	before_filter :authenticate_user!
	
  def index
  	@request = Request.new()
  	@requests = Request.all
  end

  def devtop

  end
end
