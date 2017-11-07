class Author < ActiveRecord::Base
	def name
		first_name + " " + last_name
	end
	has_many :papers
	validates :last_name, presence: true
end
