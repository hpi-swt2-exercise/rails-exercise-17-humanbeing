require 'rails_helper'

describe "show paper page", type: :feature do
  
  it "shows authors properly" do
    @paper = FactoryGirl.create :paper
	@author = FactoryGirl.create :author
	@paper.authors << @author
	visit paper_path(@paper)
	expect(page).to have_content("Alan Turing")
	
  end
  
end