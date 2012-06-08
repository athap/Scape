require 'spec_helper'

describe "exams/new" do
  before(:each) do
    assign(:exam, stub_model(Exam,
      :user_id => "",
      :question_id => "",
      :level => "",
      :selected_answer_index => ""
    ).as_new_record)
  end

  it "renders new exam form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => exams_path, :method => "post" do
      assert_select "input#exam_user_id", :name => "exam[user_id]"
      assert_select "input#exam_question_id", :name => "exam[question_id]"
      assert_select "input#exam_level", :name => "exam[level]"
      assert_select "input#exam_selected_answer_index", :name => "exam[selected_answer_index]"
    end
  end
end
