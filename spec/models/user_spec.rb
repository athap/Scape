# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  username   :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'spec_helper'

describe User do
	describe "should have many questions" do
		it { should have_many(:questions).through(:exams) }
	end  
end
