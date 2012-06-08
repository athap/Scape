require 'spec_helper'

describe "exams/show" do
  before(:each) do
    @exam = assign(:exam, stub_model(Exam,
      :user_id => "",
      :question_id => "",
      :level => "",
      :selected_answer_index => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
