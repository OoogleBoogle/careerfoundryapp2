require 'rails_helper'

RSpec.describe User, type: :model do
  it 'validates with all attributes' do
  	u = build(:user)
  	expect(u).to be_valid
  end

  it 'is invalid with first name missing' do
  	u = build(:user, first_name: nil)
  	expect(u).to_not be_valid
  end

  it 'is invalid with last name missing' do
  	u = build(:user, last_name: nil)
  	expect(u).to_not be_valid
  end

  it 'is invalid with email missing' do
  	u = build(:user, email: nil)
  	expect(u).to_not be_valid
  end

  it 'is invalid with password missing' do
  	u = build(:user, password: nil)
  	expect(u).to_not be_valid
  end
end
