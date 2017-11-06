require 'rails_helper'

describe "index for author page", type: :feature do
  
  it "should have a column namend name" do
    visit authors_path
	
	expect(page).to have_content('Name')
  end  
  
  it "should have a link to add authors" do
	visit authors_path
	
	expect(page).to have_link('Add author')
  end
end