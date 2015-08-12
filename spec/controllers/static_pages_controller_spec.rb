require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
	describe 'GET index' do
		it 'returns success' do
			get :index
			expect(response).to have_http_status(200)
		end

		it 'renders template' do
			get :index
			expect(response).to render_template('index')
		end
	end

	describe 'GET /contact' do
		context 'as anon user' do
			before :each do 
				login_with nil
			end
			it 'redirects to sign in' do
				get :contact
				expect(response).to redirect_to(new_user_session_path)
			end
		end

		context 'as user' do
			before :each do
				login_with build(:user)
			end
			it 'returns success' do
				get :contact
				expect(response).to have_http_status(200)
			end
			it 'renders template' do
				get :contact
				expect(response).to render_template('contact')
			end
		end
	end

	describe 'POST #thank you' do
		context 'as user' do
			before :each do
				login_with create(:user)
				post :thank_you, name: 'bob', email: 'bob@bob.com', body: 'message body'
			end

			it 'returns success' do
				expect(response).to have_http_status(200)
			end

			it 'renders the correct template' do
				expect(response).to render_template('thank_you')
			end
		end
	end
end
