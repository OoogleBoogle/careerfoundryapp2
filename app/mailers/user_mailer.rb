class UserMailer < ApplicationMailer
	def contact_mail(user)
		@user = user
		attachments.inline['Logo_transparent.png'] = File.read('public/images/Logo_transparent.png')
		mail(to: @user.email, subject: 'Thanks for your message!')
	end

	def contact_message(name, email, body)
		@name = name
		@email = email
		@body = body
		mail(to: "simbobattfield@hotmail.com", from: @email, subject: "You have a new message!")
	end

	def welcome_email(user)
		@user = user
		attachments.inline['Logo_transparent.png'] = File.read('public/images/Logo_transparent.png')
		mail(to: user.email, subject: "Welcome to Kevin Attfield Photography")
	end

	def purchase_mail(products, user)
		@user = user
		@products = products
		attachments.inline['Logo_transparent.png'] = File.read('public/images/Logo_transparent.png')
		mail(to: @user.email, subject: "Your purchase has been received")
	end
end
