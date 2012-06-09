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
end
