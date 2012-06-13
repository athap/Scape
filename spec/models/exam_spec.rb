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

require 'spec_helper'

describe Exam do
  describe "should belong to user and question" do
  	it { should belong_to(:user) }
  	it { should belong_to(:question) }
  end

  describe "should validate presence of user_id, question_id, level and index" do
  	it { should validate_presence_of(:user_id) }
  	it { should validate_presence_of(:question_id) }
  	it { should validate_presence_of(:level) }
  	it { should validate_presence_of(:selected_answer_identifier) }
  end
end
