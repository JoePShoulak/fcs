class UserMailer < ActionMailer::Base
  default from: 'Prestongundersonemaillist@gmail.com'

  def subscribe_success(user)
    @message = "Preston! Someone subscribed to your website! Here's their email: #{user.email}"
    
    mail to: 'prestongundersonmusic@gmail.com', subject: 'New Subscriber'
  end

  def update(user, email)
    @message = email.message
    @user = user
    address = user.email
    mail to: address, subject: email.subject
  end
end
