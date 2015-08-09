require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'validates with all attributes' do
  	o = build(:order)
  	expect(o).to be_valid
  end

  it 'is invalid with no product' do
  	o = build(:order, product_id: nil)
  	expect(o).to_not be_valid
  end

  it 'is invalid with no user' do
  	o = build(:order, user_id: nil)
  	expect(o).to_not be_valid
  end
end
