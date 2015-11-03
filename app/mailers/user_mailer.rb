class UserMailer < ApplicationMailer
  default from: "Deep Sea Kayaks"

  def contact_form(email, name, message)
  	@message = message
  	@name = name
  	@email = email
  	mail(:from => email,
  				:to => 'erican@me.com',
  				:subject => "A new message from #{name}.")
  end

  def welcome_email(user)
  	@user = user
  	mail(:to => user.email, 
  		    :subject => "Welcome to Deep Sea Kayaks!")
  end
end