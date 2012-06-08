require 'spec_helper'

describe "questions/show" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :identifier => "Identifier",
      :description => "Description",
      :correct_answer_index => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Identifier/)
    rendered.should match(/Description/)
    rendered.should match(/1/)
  end
end
