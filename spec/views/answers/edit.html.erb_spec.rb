require 'spec_helper'

describe "answers/edit" do
  before(:each) do
    @answer = assign(:answer, stub_model(Answer,
      :description => "MyString",
      :score => "",
      :feedback => "MyString",
      :index => ""
    ))
  end

  it "renders the edit answer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => answers_path(@answer), :method => "post" do
      assert_select "input#answer_description", :name => "answer[description]"
      assert_select "input#answer_score", :name => "answer[score]"
      assert_select "input#answer_feedback", :name => "answer[feedback]"
      assert_select "input#answer_index", :name => "answer[index]"
    end
  end
end
