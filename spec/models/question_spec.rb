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

require 'spec_helper'

describe Question do
  describe "should have many users through exams" do
  	it { should have_many(:users).through(:exams) }
  end

  describe "should have many answers" do
  	it { should have_many(:answers) }
  end

  describe "should validate presence of identifier, description and correct_answer_index" do
  	it { should validate_presence_of(:identifier) }
  	it { should validate_presence_of(:description) }
  	it { should validate_presence_of(:correct_answer_index) }
  end

  describe "validate correct answer index range" do
    before :each do
      @question = Question.new(:identifier => "foo", :description => "bar")
    end

    it "should be invalid" do
      @question.correct_answer_index = -1
      @question.should_not be_valid
    end

    it "should be invalid" do
      @question.correct_answer_index = 4
      @question.should_not be_valid
    end

    it "should be valid" do
      @question.correct_answer_index = 0
      @question.should be_valid
    end

    it "should be valid" do
      @question.correct_answer_index = 3
      @question.should be_valid
    end
  end
end
