class TopController < ApplicationController
  def index
  	@newrequest = Request.new()
  	@requests = Request.all
  end

  def devtop

  end
end
