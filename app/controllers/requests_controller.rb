class RequestsController < ApplicationController
  def index
  end

  def show
    @request = Request.find(params[:id])
    @suggestions = Suggestion.where("request_id = ?", @request.id)
  end

  def create
  	@request = Request.new(params[:request])
  	if @request.save
  		redirect_to :controller => "top", :action => "index"
  	else
      @requests = Request.all
  		render :template => "top/index"
  	end
  end

end
