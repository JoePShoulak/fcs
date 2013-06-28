class UserMailer < ActionMailer::Base
  default from: "preston@prestongunderson.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.subscribe_success.subject
  #
  def subscribe_success(user)
    @message = "Preston! Someone subscribed to your website! Here's their email: #{user.email}"

    mail to: "joepshoulak2@gmail.com", subject: "New Subscriber"
  end
end
