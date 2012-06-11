class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @users = User.all(:order => 'created_at DESC')
    most_recent_user = @users.first
    @exams = most_recent_user.exams

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
  
  # curl --data "username=foo&level=1&quizzes[]=L1Q1:1&quizzes[]=L1Q2:2&quizzes[]=L1Q3:3" 127.0.0.1:3000/users
  def create
    @user = User.new(:username => params[:username])

    @user.save
    @user.record_exam(params)

    respond_to do |format|
      format.html { render :status => 200, :text => 'done' }
    end
  end
end
