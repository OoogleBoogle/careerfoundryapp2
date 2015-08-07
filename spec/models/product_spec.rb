require 'rails_helper'

RSpec.describe Product, type: :model do
	it 'validates when all details given' do
		p = build(:product)
		expect(p).to be_valid
	end

	it 'errors when title is missing' do
		p = build(:product, title: nil)
		expect(p).to_not be_valid
	end

	it 'errors when description is missing' do
		p = build(:product, description: nil)
		expect(p).to_not be_valid
	end
	it 'errors when image is missing' do
		p = build(:product, image_url: nil)
		expect(p).to_not be_valid
	end
	it 'errors when price is missing' do
		p = build(:product, price: nil)
		expect(p).to_not be_valid
	end
end
