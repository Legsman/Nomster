class NotificationMailer < ActionMailer::Base
  default from: "no-reply@koffee.com"

  def comment_added(comment)
    @place = comment.place
    @place_owner = @place.user
    mail(to: @place_owner.email,
    subject: "a comment has been added to #{@place.name}")
  end
end
