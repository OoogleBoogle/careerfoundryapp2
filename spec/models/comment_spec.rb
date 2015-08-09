require 'rails_helper'

RSpec.describe Comment, type: :model do
	it 'validates with all attributes' do
		c = build(:comment)
		expect(c).to be_valid
	end

	it 'is invalid with product missing' do
		c = build(:comment, product_id: nil)
		expect(c).to_not be_valid
	end

	it 'is invalid with user missing' do
		c = build(:comment, user_id: nil)
		expect(c).to_not be_valid
	end

	it 'is invalid with no text' do
		c = build(:comment, body: nil)
		expect(c).to_not be_valid
	end
end
