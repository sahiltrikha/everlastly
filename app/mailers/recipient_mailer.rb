class RecipientMailer < ActionMailer::Base
  default from: "from@example.com"

  def email_message(recipient)
  	@recipient = recipient
  	mail(to: @recipient.email, subject: 'Welcome to My Awesome Site')
  	
  end
end
