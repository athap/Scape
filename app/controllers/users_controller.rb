class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @teachers = Teacher.all(:order => 'created_at DESC')
    #@users = User.all(:order => 'created_at DESC')
    most_recent_teacher = @teachers.first
    @users = most_recent_teacher.users

    #@exams = most_recent_user.exams if most_recent_user
    @exams = @users.first.exams if @users.first

    respond_to do |format|
      format.html #
      format.json { render json: @users }

    end
  end

  def show
    user = User.find(params[:id])
    @exams = user.exams

    respond_to do |format|
      format.html #
      format.js
    end
  end
  
#curl --data "teacher=Frankenstein&username=Igor&level=1&quizzes[]=L1Q1:Q1A2&quizzes[]=L1Q2:Q2A4&quizzes[]=L1Q3:Q3A3&quizzes[]=L1Q4:Q4A1&quizzes[]=L1Q5:Q5A3" 127.0.0.1:3000/users
  def create
    teacher = Teacher.find_by_name(params[:teacher])
    user = User.new(:username => params[:username])

    teacher.users << user
    #@user.save
    user.record_exam(params)

    respond_to do |format|
      format.html { render :status => 200, :text => 'done' }
    end
  end
end
