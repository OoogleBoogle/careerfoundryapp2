require "rails_helper"

RSpec.describe StaticPagesController, type: :routing do
	describe 'routing' do
		it 'routes to #index' do
			expect(get: '/static_pages/index').to route_to('static_pages#index')
		end

		it 'routes to #contact' do
			expect(get: '/static_pages/contact').to route_to('static_pages#contact')
		end

		it 'routes to #payment_received' do
			expect(post: '/users/1/orders').to route_to('static_pages#payment_received', id: "1")
		end

		it 'routes to #thank_you after contact message' do
			expect(post: 'static_pages/thank_you').to route_to('static_pages#thank_you')
		end
	end
end