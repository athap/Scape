# == Schema Information
#
# Table name: teachers
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  school     :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  state      :string(255)
#

require 'spec_helper'

describe Teacher do
  describe "should have many users" do
  	it { should have_many(:users) }
  end

  describe "should validate presence of name and school" do
  	it { should validate_presence_of(:name) }
  	it { should validate_presence_of(:school) }
  end
end
