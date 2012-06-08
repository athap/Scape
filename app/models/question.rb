class Question < ActiveRecord::Base

	has_many :answers

	has_many :exams
	has_many :users, :through => :exams
end
