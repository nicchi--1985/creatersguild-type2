class SuggestionsController < ApplicationController
	before_filter :authenticate_user!

	def new
		@suggest = Suggestion.new(:request_id => params[:reqid])
	end

	def create
		@suggest = Suggestion.new(params[:suggestion])
		if @suggest.save
			@request = Request.find(@suggest.request_id)
  			redirect_to @request
  		else
  			render "new"
  		end
	end
end
