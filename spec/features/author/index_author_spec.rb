require 'rails_helper'

describe "index for author page", type: :feature do
  
  it "should have a column namend name" do
    visit authors_path
	
	expect(page).to have_content('Name')
  end  
end