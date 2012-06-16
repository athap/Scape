require 'spec_helper'

describe "Users" do
  # Because of subject { page }, the call to should automatically 
  # uses the page variable supplied by Capybara

  subject { page }
  describe "Home page" do
    before { visit users_path }

    it { should have_content('Scape Data Collection') }
    it { should have_selector('th', text: "Students") }
    it { should have_selector('th', text: "Teachers") }
    it { should have_selector('th', text: "Question") }
    it { should have_selector('th', text: "Selected Answer") }
    it { should have_selector('th', text: "Correct Answer") }
    it { should have_selector('th', text: "Points") }
  end

  describe "Teachers list" do
    let(:teacher) { FactoryGirl.create(:teacher) }
    before { visit users_path }

    it { should have_selector('a', :content => teacher.name) }
    
    it { should have_selector('div.pagination') }

    it "should list all teachers" do
      Teacher.paginate(:page => 1).each do |teacher|
        page.should have_selector('a', :content => teacher.name)
      end
    end
  end
end