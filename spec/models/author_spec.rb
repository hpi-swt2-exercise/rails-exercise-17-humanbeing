require 'rails_helper'

describe "New author page", type: :model do
  
  it "create an instance of Author Alan Turing" do
	author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
  
	expect(author.first_name).to eq('Alan')
	expect(author.last_name).to eq('Turing')
	expect(author.homepage).to eq('http://wikipedia.org/Alan_Turing')
  end
  
  it "full name of Author Alan Turing" do
	author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
  
	expect(author.name).to eq('Alan Turing')
  end
  
  it "should validate that there is a last_name" do
	expect(Author.new(first_name: 'Alan', last_name: '', homepage: 'http://wikipedia.org/Alan_Turing').save).to eq(false)
  end
  
end