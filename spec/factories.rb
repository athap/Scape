FactoryGirl.define do
	factory :user do
		sequence(:username) { |n|  "user #{n}" }
		teacher
	end

	factory :teacher do
		sequence(:name) { |n| "teacher #{n}" }
		school "Igor Academy"
		sequence(:state) { |n| "state #{n}" }
	end

	factory :answer do
		sequence(:identifier) { |n| "Q#{n}A#{n}" }
		sequence(:description) { |n| "Answer description #{n}" }
		sequence(:score) { |n| n }
		sequence(:feedback) { |n| "Answer feedback #{n}" }
		question
	end

	factory :question do
		sequence(:identifier) { |n| "L#{n}Q#{n}" }
		sequence(:description) { |n| "Question description #{n}" }
		sequence(:correct_answer_identifier) { |n| "Q#{n}A#{n}" }
	end

	factory :exam do
		user
		question		
		sequence(:selected_answer_identifier) { |n| "Q#{n}A#{n}" }
		sequence(:level) { |n| n }
	end

end