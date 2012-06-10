# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  username   :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class User < ActiveRecord::Base
	has_many :exams
	has_many :questions, :through => :exams

	def record_exam(params)
		quizzes = params[:quizzes]
		level = params[:level]

		quizzes.map do |quiz|
			Exam.write(level, quiz, self)
		end
	end
end
