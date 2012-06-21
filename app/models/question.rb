# == Schema Information
#
# Table name: questions
#
#  id                        :integer         not null, primary key
#  identifier                :string(255)
#  description               :string(255)
#  created_at                :datetime        not null
#  updated_at                :datetime        not null
#  correct_answer_identifier :string(255)
#

class Question < ActiveRecord::Base

	has_many :answers

	has_many :exams
	has_many :users, :through => :exams

	validates :identifier, :description, :presence => true

	def selected_answer(selected_answer_identifier)
		get_answer_from_identifier(selected_answer_identifier)
	end

	def correct_answer
		get_answer_from_identifier(self.correct_answer_identifier)
	end

	def total_attempts
		self.exams.count.to_f
	end

	def correct_attempts_percent
		count = 0.0
		self.exams.map do |exam|
			count = count + 1 if(exam.is_correct?(self.correct_answer_identifier))
		end
		convert_to_percent(count)
	end

	def semi_correct_attempts_percent
		semi_correct_ans = self.answers.semicorrect.first.identifier
		count = 0.0
		
		self.exams.map do |exam|
			count = count + 1 if(exam.is_semi_correct?(semi_correct_ans))
		end
		convert_to_percent(count)
	end

	def convert_to_percent(count)
		count = count /self.total_attempts
		count.round(2)
	end



	private

	def get_answer_from_identifier(identifier)
		Answer.find_by_identifier(identifier)
	end
end