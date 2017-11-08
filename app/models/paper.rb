class Paper < ActiveRecord::Base
  belongs_to :author
  validates :title, presence: true
  validates :venue, presence: true
  Validates :year, presence: true
end
