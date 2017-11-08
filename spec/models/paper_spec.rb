require 'rails_helper'

  describe "New paper page", type: :model do
    it "should validate that there is a title" do
	  expect(Paper.new(title: '', venue: '', year: '').save).to eq(false)
    end
	
	it "should validate that there is a venue" do
	  expect(Paper.new(title: '', venue: '', year: '').save).to eq(false)
    end
  end
