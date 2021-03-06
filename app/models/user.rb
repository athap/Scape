# == Schema Information
#
# Table name: users
#
#  id          :integer         not null, primary key
#  username    :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  teacher_id  :integer
#  total_score :integer
#

class User < ActiveRecord::Base

	belongs_to :teacher
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
