class NotificationMailer < ActionMailer::Base
  default from: "no-reply@koffee.com"

  def comment_added
    mail(to: "antoine.macia83@gmail.com",
    subject: "a comment has been added to your place")
  end
end
