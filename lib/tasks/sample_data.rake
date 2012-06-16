namespace :db do
	desc "Populate db with some sample teachers and students"
	task :populate => :environment do
		teacher = Teacher.find(2)
		15.times do
			username = Faker::Internet.user_name
			user = User.create!(:username => username)
			teacher.users << user
		end	
	end
end