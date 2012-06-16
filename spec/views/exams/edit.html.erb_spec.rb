require 'spec_helper'

describe "exams/edit" do
  before(:each) do
    @exam = assign(:exam, stub_model(Exam,
      :user_id => 1,
      :question_id => 1,
      :level => 1,
      :selected_answer_identifier => "Q1A1"
    ))
  end

  it "renders the edit exam form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => exams_path(@exam), :method => "post" do
      assert_select "input#exam_user_id", :name => "exam[user_id]"
      assert_select "input#exam_question_id", :name => "exam[question_id]"
      assert_select "input#exam_level", :name => "exam[level]"
      assert_select "input#exam_selected_answer_identifier", :name => "exam[selected_answer_identifier]"
    end
  end
end
