class NotificationMailer < ActionMailer::Base
  default from: "no-reply@koffee.com"

  def comment_added
    mail(to: "maciaantoine@yahoo.fr",
    subject: "a comment has been added to your place")
  end
end
