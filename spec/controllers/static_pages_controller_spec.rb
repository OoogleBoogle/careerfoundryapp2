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
