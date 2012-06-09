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
  	it { should validate_presence_of(:selected_answer_index) }
  end

  describe "validate index's range" do
    before :each do
      @exam = Exam.new(:user_id => 1, :question_id => 1, :level => 1)
    end

    it "should be invalid" do
      @exam.selected_answer_index = -1
      @exam.should_not be_valid
    end

    it "should be invalid" do
      @exam.selected_answer_index = 4
      @exam.should_not be_valid
    end

    it "should be valid" do
      @exam.selected_answer_index = 0
      @exam.should be_valid
    end

    it "should be valid" do
      @exam.selected_answer_index = 3
      @exam.should be_valid
    end
  end
end
