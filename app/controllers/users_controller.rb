class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html #
      format.json { render json: @users }
    end
  end

  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end


  # Started POST "/users" for 127.0.0.1 at 2012-06-09 15:22:40 -0600
  # Processing by UsersController#create as HTML
  # Parameters: {"utf8"=>"✓", "authenticity_token"=>"TtCFRi9/iDlr63Evzlp8LlA8d8WN6gW6iKWkOCoyVGk=", 
  # "user"=>{"username"=>"abc"}, "commit"=>"Create User"}
  
  # POST /users
  # POST /users.json
  # data = { 
  #  :user => {:username => 'foo'}, 
  #  :questions => [ 
  #    {
  #      :question => {:desc => "bar", :level => 1, :selected => 1}
  #    }, 
  #    {
  #      :question =>  {:desc => "foo", :level => "1", :selected => 2}
  #    }]}
  def create
    @user = User.new(params[:user])
    #debugger
    #@user.save
    #@user.record_exam(params)
    respond_to do |format|
      format.html { render :status => 200, :text => 'done' }
    end

  end

end
