require 'spec_helper'

describe Question do
  describe "should have many users through exams" do
  	it { should have_many(:users).through(:exams) }
  end

  describe "should have many answers" do
  	it { should have_many(:answers) }
  end
end
