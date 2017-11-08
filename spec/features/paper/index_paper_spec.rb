require 'rails_helper'

describe "index for paper page", type: :feature do
  
  
  
  it "should have a link to add papers" do
	visit papers_path
	
	expect(page).to have_link('Add paper')
  end
  
  it "should have a link to show a paper" do
	Paper.new(title:'Alan', venue: 'Turing', year: 1234).save
	
	visit papers_path
	
	expect(page).to have_link('Show')
  end
  
  it "should have a link to destroy alan turing" do
	Paper.new(title:'Alan', venue: 'Turing', year: 1234).save
	
	visit papers_path
	
	expect(page).to have_link('Destroy')
  end
  
  it "should render" do
	visit papers_path
  end
end