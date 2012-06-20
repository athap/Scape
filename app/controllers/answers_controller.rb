class AnswersController < ApplicationController
  # GET /answers
  # GET /answers.json
  def index
    respond_to do |format|
      format.html { render :text => "You don't have permission to view this" }
    end
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
end
