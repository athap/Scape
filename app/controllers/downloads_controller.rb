class DownloadsController < ApplicationController
	before_filter :define_header, :except => :index

	def index
	end
  # GET /answers/1
  # GET /answers/1.json
  def show
    respond_to do |format|
      format.html { render :text => "You don't have permission to view this" }
    end
  end

  # GET /answers/new
  # GET /answers/new.json
  def new
    respond_to do |format|
      format.html { render :text => "You don't have permission to view this" }
    end
  end

  # GET /answers/1/edit
  def edit
    respond_to do |format|
      format.html { render :text => "You don't have permission to view this" }
    end
  end

  # POST /answers
  # POST /answers.json
  def create
    respond_to do |format|
      format.html { render :text => "You don't have permission to view this" }
    end
  end

  # PUT /answers/1
  # PUT /answers/1.json
  def update
    respond_to do |format|
      format.html { render :text => "You don't have permission to view this" }
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    respond_to do |format|
      format.html { render :text => "You don't have permission to view this" }
    end
  end

	def export_teachers
		@teachers = Teacher.all
   	respond_to do |format|
    	format.html { render :partial => 'export_teachers' }
    end
	end

	def export_students
		@users = User.all
   	respond_to do |format|
    	format.html { render :partial => 'export_students' }
    end
	end

	def export_exams
		@exams = Exam.all
   	respond_to do |format|
    	format.html { render :partial => 'export_exams' }
    end
	end

	def export_questions
		@questions = Question.all
   	respond_to do |format|
    	format.html { render :partial => 'export_questions' }
    end
	end

	def export_answers
		@answers = Answer.all
   	respond_to do |format|
    	format.html { render :partial => 'export_answers' }
    end
	end

	private

	def define_header
		headers['Content-Type'] = "application/vnd.ms-excel"
    headers['Content-Disposition'] = "attachment; filename=#{params[:name]}.xls"
    headers['Cache-Control'] = ''
	end
end