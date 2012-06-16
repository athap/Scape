FactoryGirl.define do
	factory :user do
		sequence(:username) { |n|  "user #{n}" }
		teacher
	end

	factory :teacher do
		sequence(:name) { |n| "teacher #{n}" }
		school "Igor Academy"
	end
end