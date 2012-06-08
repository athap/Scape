require 'spec_helper'

describe "answers/index" do
  before(:each) do
    assign(:answers, [
      stub_model(Answer,
        :description => "Description",
        :score => 1,
        :feedback => "Feedback",
        :index => 2
      ),
      stub_model(Answer,
        :description => "Description",
        :score => 1,
        :feedback => "Feedback",
        :index => 2
      )
    ])
  end

  it "renders a list of answers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Feedback".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
