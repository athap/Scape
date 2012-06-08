class User < ActiveRecord::Base
	has_many :exams
	has_many :questions, :through => :exams
end
