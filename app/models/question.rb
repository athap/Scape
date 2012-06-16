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

	private

	def get_answer_from_identifier(identifier)
		Answer.find_by_identifier(identifier)
	end
end
