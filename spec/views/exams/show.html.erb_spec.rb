require 'spec_helper'

describe "exams/show" do
  before(:each) do
    @exam = assign(:exam, stub_model(Exam,
      :user_id => 1,
      :question_id => 2,
      :level => 3,
      :selected_answer_identifier => "Q1A2"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Q1A2/)
  end
end
