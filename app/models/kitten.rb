class Kitten < ActiveRecord::Base

  validates :image, presence: true
  belongs_to :kitten, through: :categorization
end
