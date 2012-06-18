namespace :db do
	desc "Populate db with some sample teachers and students"
	task :populate => :environment do
	  
	  10.times do
		teacher_name = Faker::Name.name
		school = Faker::Company.name
		teacher = Teacher.create(:name => teacher_name, :school => school)

		15.times do
			username = Faker::Internet.user_name
			user = User.create!(:username => username)
			teacher.users << user
		end

	  end
	  
	end
end