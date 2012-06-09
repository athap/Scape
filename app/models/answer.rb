# == Schema Information
#
# Table name: answers
#
#  id          :integer         not null, primary key
#  description :string(255)
#  score       :integer
#  feedback    :string(255)
#  index       :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  question_id :integer
#

class Answer < ActiveRecord::Base
	belongs_to :question
	validates :description, :score, :feedback, :index, :presence => true 
	validates :index, :inclusion => 0..3
end
