require 'spec_helper'

describe "Users" do
  describe "GET /users" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get users_path
      response.status.should be(200)
    end
  end

  describe "Home page" do
  	it "should have the content 'Scape Data Collection' and Humans" do
  		visit users_path
  		page.should have_content('Scape Data Collection')
  		page.should have_content('Humans')
  	end
  end
end
