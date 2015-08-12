class UserMailer < ApplicationMailer
	def contact_mail(user)
		@user = user
		attachments.inline['logo_text.svg'] = File.read('public/images/logo_text.svg')
		mail(to: @user.email, subject: 'Thanks for your message!')
	end

	def contact_message(name, email, body)
		@name = name
		@email = email
		@body = body
		attachments.inline['logo_text.svg'] = File.read('public/images/logo_text.svg')
		mail(to: "simbobattfield@hotmail.com", from: @email, subject: "You have a new message!")
	end

	def welcome_email(user)
		@user = user
		attachments.inline['logo_text.svg'] = File.read('public/images/logo_text.svg')
		mail(to: user.email, subject: "Welcome to Kevin Attfield Photography")
	end

	def purchase_mail(products, user)
		@user = user
		@products = products
		attachments.inline['logo_text.svg'] = File.read('public/images/logo_text.svg')
		mail(to: @user.email, subject: "Your purchase has been received")
	end
end
