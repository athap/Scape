# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  username   :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  teacher_id :integer
#

require 'spec_helper'

describe User do
	describe "should have many questions" do
		it { should belong_to(:teacher) }
		it { should have_many(:questions).through(:exams) }
	end  
end
