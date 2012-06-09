# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  username   :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class User < ActiveRecord::Base
	has_many :exams
	has_many :questions, :through => :exams

	def record_exam(params)
		questions = params[:questions]
		debugger
	end
end
