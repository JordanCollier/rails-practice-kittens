class Category < ActiveRecord::Base
  validates :name, presence: true, uniqueness: {case_sensitive: false}

  has_many :kitten, through: :categorization 
end
