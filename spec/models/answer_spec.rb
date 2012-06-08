require 'spec_helper'

describe Answer do
  describe "should belongs to question" do
  	it { should belong_to(:question) }
  end
end
