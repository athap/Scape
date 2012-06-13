class TeachersController < ApplicationController
  def show
    teacher = Teacher.find(params[:id])
    @users = teacher.users
    
    respond_to do |format|
      format.html #
      format.js
    end
  end
end
