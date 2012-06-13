# == Schema Information
#
# Table name: answers
#
#  id          :integer         not null, primary key
#  description :string(255)
#  score       :integer
#  feedback    :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  question_id :integer
#  identifier  :string(255)
#

class Answer < ActiveRecord::Base
	belongs_to :question
	validates :description, :score, :feedback, :identifier, :presence => true 
end
