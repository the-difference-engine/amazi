class MailersController < ApplicationController

	def send_feedback
		message = params[:message]
		email = params[:email]
		FeedbackMailer.feedback_email(message).deliver_now
		
		redirect_to "#"
	end

	def feedback_form
	end
	
end
