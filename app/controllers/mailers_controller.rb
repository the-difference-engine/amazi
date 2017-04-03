class MailersController < ApplicationController

	def send_feedback
		message = params[:message]
		FeedbackMailer.feedback_email(message).deliver_now
		redirect_to "/#"
	end
end
