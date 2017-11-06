require 'rails_helper'

describe "New author page", type: :feature do
  
  it "should render withour error" do
    visit new_author_path
  end
  
  it "should have text input for first name, last name, and homepage" do
    visit new_author_path
  
    expect(page).to have_field('First name')
	expect(page).to have_field('Last name')
	expect(page).to have_field('Homepage')
  end
  
  it "should show error massage when there is no last name" do
	visit new_author_path
	click_button('Save')
	
	expect(page).to have_text('Last name can\'t be blank')
  end
  
  it "should render withour error" do
    visit edit_author_path(Author.new(first_name:'Alan', last_name: 'Turing', homepage: 'www.adresse.de').save)
  end
  
end