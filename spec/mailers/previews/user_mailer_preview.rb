# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
	def contact_mail
		user = User.first
		UserMailer.contact_mail(user)
	end

	def contact_message
		name = "Andy"
		email = "me@me.com"
		body = "Test Message"
		UserMailer.contact_message(name, email, body)
	end

	def welcome_email
		user = User.first
		UserMailer.welcome_email(user) 
	end

	def purchase_mail
		product = Product.limit(3)
		user = User.first
		UserMailer.purchase_mail(product, user)
	end
end
