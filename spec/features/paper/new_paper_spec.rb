require 'rails_helper'

describe "New paper page", type: :feature do
  
  it "should render withour error" do
    visit new_paper_path
  end
  
  it "should show error massage when there is no title" do
	visit new_paper_path
	click_button('Save Paper')
	
	expect(page).to have_text('Title can\'t be blank')
  end
end