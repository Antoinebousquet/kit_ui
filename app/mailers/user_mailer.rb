class UserMailer < ApplicationMailer
  default from: 'no-reply@thisapp.dot'
  
  def welcome_email(user)
    @user = user
    @url = 'http://thisapp.dot/login'
    mail(to: @user.email, subject: 'Welcome here !')
  end
end
