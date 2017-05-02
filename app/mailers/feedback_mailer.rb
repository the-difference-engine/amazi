class FeedbackMailer < ApplicationMailer

  def feedback_email(message)

	  @message = message
	  mail(to: "jakerabeck@gmail.com", subject: 'Amazi User Feedback') do |format|
			format.html { render 'feedback_email.html.erb' }
			end
  end


end
