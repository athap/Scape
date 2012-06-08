require 'spec_helper'

describe "questions/new" do
  before(:each) do
    assign(:question, stub_model(Question,
      :identifier => "MyString",
      :description => "MyString",
      :correct_answer_index => 1
    ).as_new_record)
  end

  it "renders new question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => questions_path, :method => "post" do
      assert_select "input#question_identifier", :name => "question[identifier]"
      assert_select "input#question_description", :name => "question[description]"
      assert_select "input#question_correct_answer_index", :name => "question[correct_answer_index]"
    end
  end
end
