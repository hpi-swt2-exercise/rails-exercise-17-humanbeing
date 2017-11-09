require 'rails_helper'

describe "edit for paper page", type: :feature do
  
  
  it "should edit without error" do
	expect{
		paper = Paper.new(title:'Alan', venue: 'Turing', year: 1234)
		paper.save
		
		visit edit_paper_path(paper)
		fill_in('Title', :with => 'Alan Mathison')
		click_button('Update Paper')	
	}.not_to raise_error
  end
  
  it "should render" do
	paper = Paper.new(title:'Alan', venue: 'Turing', year: 1234)
	paper.save
	visit edit_paper_path(paper)
  end
  
  it "should show selectbox" do
	paper = Paper.new(title:'Alan', venue: 'Turing', year: 1234)
	paper.save
	visit edit_paper_path(paper)
	expect(page).to have_content("Author 1")
  end
end