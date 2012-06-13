# == Schema Information
#
# Table name: questions
#
#  id                        :integer         not null, primary key
#  identifier                :string(255)
#  description               :string(255)
#  created_at                :datetime        not null
#  updated_at                :datetime        not null
#  correct_answer_identifier :string(255)
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
  	it { should validate_presence_of(:correct_answer_identifier) }
  end
end
