require 'spec_helper'

describe "exams/index" do
  before(:each) do
    assign(:exams, [
      stub_model(Exam,
        :user_id => "",
        :question_id => "",
        :level => "",
        :selected_answer_index => ""
      ),
      stub_model(Exam,
        :user_id => "",
        :question_id => "",
        :level => "",
        :selected_answer_index => ""
      )
    ])
  end

  it "renders a list of exams" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
