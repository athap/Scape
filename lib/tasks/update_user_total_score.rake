# If you are seeing this task, don't ever run it. This task is written to
# updates a newly added column total score. From now on, this column data will be received
# as a post param
namespace :db do
	desc "Update the total score for all users"
	task :update_score => :environment do
		users = User.all
		
		users.each do |user|
			total_score = 0
			exams = user.exams
			exams.each do|exam|
				answer = Answer.find_by_identifier(exam.selected_answer_identifier)
				total_score += answer.score
			end
			user.total_score = total_score
			user.save
		end
	end
end