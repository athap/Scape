# == Schema Information
#
# Table name: questions
#
#  id                   :integer         not null, primary key
#  identifier           :string(255)
#  description          :string(255)
#  correct_answer_index :integer
#  created_at           :datetime        not null
#  updated_at           :datetime        not null
#

class Question < ActiveRecord::Base

	has_many :answers

	has_many :exams
	has_many :users, :through => :exams

	validates :identifier, :description, :correct_answer_index, :presence => true
	validates :correct_answer_index, :inclusion => 0..3

	def selected_answer(selected_answer_index)
		get_answer_from_index(selected_answer_index)
	end

	def correct_answer
		get_answer_from_index(self.correct_answer_index)
	end

	private

	def get_answer_from_index(index)
		self.answers[index]
	end
end
