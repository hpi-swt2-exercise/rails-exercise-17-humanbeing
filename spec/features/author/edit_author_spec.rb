require 'rails_helper'

describe "edit for author page", type: :feature do
  
  
  it "should edit without error" do
	expect{
		author = Author.new(first_name:'Alan', last_name: 'Turing', homepage: 'www.adresse.de')
		author.save
		
		visit edit_author_path(author)
		fill_in('First name', :with => 'Alan Mathison')
		click_button('Update Author')	
	}.not_to raise_error
  end
end