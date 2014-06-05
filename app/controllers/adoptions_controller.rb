class AdoptionsController < ApplicationController

	def create
		@adoption = Adoption.new(params[:adoption])
		if @adoption.save
			@suggestion = Suggestion.find(@adoption.suggestion_id)
			@suggestion.update_attribute(:adopted, true)
			redirect_to request.env["HTTP_REFERER"]
		else
			redirect_to request.env["HTTP_REFERER"]
		end 
	end
end
