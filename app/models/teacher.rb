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

class Teacher < ActiveRecord::Base
	validates :name, :school, :presence => true
	
	has_many :users
end
