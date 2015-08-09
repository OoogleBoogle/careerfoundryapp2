FactoryGirl.define do
  factory :comment do
    user
		product
		body "MyText"
		rating 1
  end
end
