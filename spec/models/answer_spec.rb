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

require 'spec_helper'

describe Answer do
  describe "should belongs to question" do
  	it { should belong_to(:question) }
  end

  describe "should validate presence of description, score, feedback and identifier" do
  	it { should validate_presence_of(:description) }
  	it { should validate_presence_of(:score) }
  	it { should validate_presence_of(:feedback) }
  	it { should validate_presence_of(:identifier) }
  end

  describe "validate identifier match the pattern Q1A1" do
  	before :each do
  		@answer = Answer.new(:description => "foo", :score => 1, 
        :feedback => "bar", :identifier => "Q1A1")
  	end

  	it "should start with Q" do
  	  @answer.identifier.match(/^[Q]/).should_not be_nil
  	end

    it "should end with 1,2,3, 4 or 5" do
      @answer.identifier.match(/[1-5]$/).should_not be_nil
    end

    it "should not end with number greater than 5" do
      @answer.identifier = "Q1A9"
      @answer.identifier.match(/[1-5]$/).should be_nil
    end

    it "should not end with number 0" do
      @answer.identifier = "Q1A0"
      @answer.identifier.match(/[1-5]$/).should be_nil
    end
  end
end
