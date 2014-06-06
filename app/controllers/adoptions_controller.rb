class AdoptionsController < ApplicationController

	def create
		@adoption = Adoption.new(params[:adoption])
		if @adoption.save
			@suggestion = Suggestion.find(@adoption.suggestion_id)
			@suggestion.update_attribute(:adopted, true)
			mail_send(@adoption.id)
			redirect_to request.env["HTTP_REFERER"]
		else
			redirect_to request.env["HTTP_REFERER"]
		end 
	end

	private
	def mail_send(adopt_id)
	    @mail = NoticeMailer.sendmail_confirm(adopt_id).deliver
  	end
end
