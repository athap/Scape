# == Schema Information
#
# Table name: exams
#
#  id                    :integer         not null, primary key
#  user_id               :integer
#  question_id           :integer
#  level                 :integer
#  selected_answer_index :integer
#  created_at            :datetime        not null
#  updated_at            :datetime        not null
#

class Exam < ActiveRecord::Base
	belongs_to :user
	belongs_to :question

  validates :user_id, :question_id, :level, :selected_answer_index, :presence => true
  validates :selected_answer_index, :inclusion => 0..3

  def self.write(level, quiz, user)
  	exam_arr = quiz.split(':')
  	question = Question.find_by_identifier(exam_arr[0]) rescue nil  	
  	selected_ans = exam_arr[1].to_i

  	Exam.create(
  		:user_id => user.id, 
  		:question_id => question.id, 
  		:level => level, 
  		:selected_answer_index => selected_ans)
  end
end