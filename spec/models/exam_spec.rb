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

  describe "should validate presence of user_id, question_id, 
    level and selected_answer_identifier" do
  	it { should validate_presence_of(:user_id) }
  	it { should validate_presence_of(:question_id) }
  	it { should validate_presence_of(:level) }
  	it { should validate_presence_of(:selected_answer_identifier) }
  end

  describe "should return true/false if the selected ans is correct/incorrect" do
    let(:exam) { FactoryGirl.create(:exam) }
    
    it "should not be nil" do
      exam.should_not be_nil
    end

    it "should return false for blank answer identifire" do
      exam.is_correct?("").should be_false
    end

    it "should return false for incorrect answer identifire" do
      exam.is_correct?(exam.selected_answer_identifier + "blah").should be_false
    end

    it "should return true for correct answer identifire" do
      exam.is_correct?(exam.selected_answer_identifier).should be_true
    end
  end

end
