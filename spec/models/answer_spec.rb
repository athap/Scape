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

require 'spec_helper'

describe Answer do
  describe "should belongs to question" do
  	it { should belong_to(:question) }
  end

  describe "should validate presence of description, score, feedback and index" do
  	it { should validate_presence_of(:description) }
  	it { should validate_presence_of(:score) }
  	it { should validate_presence_of(:feedback) }
  	it { should validate_presence_of(:index) }
  end

  describe "validate index's range" do
  	before :each do
  		@answer = Answer.new(:description => "foo", :score => 1, 
        :feedback => "bar")
  	end

  	it "should be invalid" do
  	  @answer.index = -1
  	  @answer.should_not be_valid
  	end

  	it "should be invalid" do
  	  @answer.index = 4
  	  @answer.should_not be_valid
  	end

  	it "should be valid" do
  	  @answer.index = 0
  	  @answer.should be_valid
  	end

  	it "should be valid" do
  	  @answer.index = 3
  	  @answer.should be_valid
  	end
  end
end
