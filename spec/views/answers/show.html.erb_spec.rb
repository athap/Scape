require 'spec_helper'

describe "answers/show" do
  before(:each) do
    @answer = assign(:answer, stub_model(Answer,
      :description => "Description",
      :score => "",
      :feedback => "Feedback",
      :index => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    rendered.should match(//)
    rendered.should match(/Feedback/)
    rendered.should match(//)
  end
end
