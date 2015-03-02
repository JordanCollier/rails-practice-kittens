class Categorization < ActiveRecord::Base
  belongs_to :kitten
  belongs_to :category
  validate :unique_ids

  def unique_ids
    if Categorization.find_by(category_id: category_id, kitten_id: kitten_id)
      errors.add(:base, 'Category already exists for this kitten')
    end
  end
end
