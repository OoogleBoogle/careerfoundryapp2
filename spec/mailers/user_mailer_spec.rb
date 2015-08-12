require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe 'the correct email is sent' do
    before :each do
      @user = create(:user)
    end
  	context 'when a user signs up' do
  		before :each do
  			@email = UserMailer.welcome_email(@user).deliver_later
  			@sent_mail = ActionMailer::Base.deliveries.last
  		end

  		it 'creates mail' do
        expect(ActionMailer::Base.deliveries).to_not be_empty
      end

  		it 'contains the correct details' do
  			expect(@sent_mail.subject).to match('Welcome to Kevin Attfield Photography')
  			expect(@sent_mail.to).to eq([@user.email])
  			expect(@sent_mail.from).to eq(['simattfield@gmail.com'])
  			expect(@sent_mail).to have_content('Thanks for signing up!')
  		end
  	end

  	context 'when a user sends a contact message' do
  		before :each do
  			UserMailer.contact_mail(@user).deliver_later
  			@sent_mail = ActionMailer::Base.deliveries.last
  		end

  		it 'creates the contact mail' do
  			expect(ActionMailer::Base.deliveries).to_not be_empty
  		end

  		it 'contains the right customer details' do
  			expect(@sent_mail.subject).to eq('Thanks for your message!')
  			expect(@sent_mail.to).to eq([@user.email])
  			expect(@sent_mail.from).to eq(['simattfield@gmail.com'])
  		end
  	end

  	context 'when a user sends a message the site owner receives message' do
  		before :each do
  			UserMailer.contact_message(@user.full_name, @user.email, "This is the message body").deliver_later
  			@sent_mail = ActionMailer::Base.deliveries.last
  		end

  		it 'creates the message' do
  			expect(ActionMailer::Base.deliveries).to_not be_empty
  		end

  		it 'contains the right customer details' do
  			expect(@sent_mail.subject).to eq('You have a new message!')
  			expect(@sent_mail.to).to eq(['simbobattfield@hotmail.com'])
  			expect(@sent_mail).to have_content('This is the message body')
  			expect(@sent_mail).to have_content('New Message From first last')
  		end
  	end
  end
end
