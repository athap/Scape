# == Schema Information
#
# Table name: exams
#
#  id                         :integer         not null, primary key
#  user_id                    :integer
#  question_id                :integer
#  level                      :integer
#  created_at                 :datetime        not null
#  updated_at                 :datetime        not null
#  selected_answer_identifier :string(255)
#

class Exam < ActiveRecord::Base
	belongs_to :user
	belongs_to :question

  validates :user_id, :question_id, :level, :selected_answer_identifier, :presence => true

  def question
    @question = Question.find(self.question_id) rescue nil
    return (@question) ? @question.description : "question not available"
  end

  def selected_answer
    return "No selected answer" unless @question
    @selected_answer = @question.selected_answer(self.selected_answer_identifier)
    @selected_answer.description
  end

  def correct_answer
    return "No correct answer" unless @question
    @correct_answer = @question.correct_answer
    @correct_answer.description
  end

  def points_earned
    return 0 unless @selected_answer
    @selected_answer.score
  end

  def is_correct?(correct_ans)
    return self.selected_answer_identifier.eql?(correct_ans)
  end

  def is_semi_correct?(semi_correct_ans)    
    return self.selected_answer_identifier.eql?(semi_correct_ans)
  end

  def self.write(level, quiz, user)
  	exam_arr = quiz.split(':')
  	question = Question.find_by_identifier(exam_arr[0]) 	
  	#selected_ans = exam_arr[1].to_i
    selected_ans_identifier = exam_arr[1]

  	Exam.create(
  		:user_id => user.id, 
  		:question_id => question.id, 
  		:level => level, 
  		:selected_answer_identifier => selected_ans_identifier)
  end
end
