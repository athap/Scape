require 'spec_helper'

describe User do
	describe "should have many questions" do
		it { should have_many(:questions).through(:exams) }
	end  
end
