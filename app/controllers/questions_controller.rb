class QuestionsController < ApplicationController
  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @questions }
    end
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
    respond_to do |format|
      format.html { render :text => "You don't have permission to view this" }
    end
  end

  # GET /questions/new
  # GET /questions/new.json
  def new
    respond_to do |format|
      format.html { render :text => "You don't have permission to view this" }
    end
  end

  # GET /questions/1/edit
  def edit
    respond_to do |format|
      format.html { render :text => "You don't have permission to view this" }
    end
  end

  # POST /questions
  # POST /questions.json
  def create
    respond_to do |format|
      format.html { render :text => "You don't have permission to view this" }
    end
  end

  # PUT /questions/1
  # PUT /questions/1.json
  def update
    respond_to do |format|
      format.html { render :text => "You don't have permission to view this" }
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    respond_to do |format|
      format.html { render :text => "You don't have permission to view this" }
    end
  end
end