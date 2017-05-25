class FeedbackMailer < ApplicationMailer

  def feedback_email(message, email)

	  @message = message
	  @email = email
	  mail(to: "theamaziapp@gmail.com", subject: 'Amazi User Feedback') do |format|
			format.html { render 'feedback_email.html.erb' }
			end

  end

  def feedback_form
  	  @current_user = current_user.email
  end


end
