class UserMailer < ActionMailer::Base
  default from: 'Prestongundersonemaillist@gmail.com'

  def update(user, email)
    @message = email.message
    @user = user
    address = user.email
    mail to: address, subject: email.subject
  end
end
