require 'spec_helper'

describe Exam do
  describe "should belong to user and question" do
  	it { should belong_to(:user) }
  	it { should belong_to(:question) }
  end
end
