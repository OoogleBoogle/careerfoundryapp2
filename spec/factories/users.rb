FactoryGirl.define do
	sequence :email do |n|
		"person#{n}@example.com"
	end
end

FactoryGirl.define do
  factory :user do
    first_name "first"
    last_name "last"
    email
    password "password"
    password_confirmation "password"
    factory :admin do
    	admin true
    end
  end
end
