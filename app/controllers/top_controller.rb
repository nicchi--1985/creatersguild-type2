class TopController < ApplicationController
  def index
  	@request = Request.new()
  	@requests = Request.all
  end

  def devtop

  end
end
