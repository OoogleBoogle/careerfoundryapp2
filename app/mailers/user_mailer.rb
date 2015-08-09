class UserMailer < ApplicationMailer
	def contact_mail(user)
		@user = user
		mail(to: @user.email, subject: 'Thanks for you message!')
	end

	def contact_message(name, email, body)
		@name = name
		@email = email
		@body = body
		mail(to: "simbobattfield@hotmail.com", from: @email, subject: "You have a new message!")
	end
end
