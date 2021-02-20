class AddedIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient
  validates :amount, presence: true
  validates_uniqueness_of :recipe_id, :scope => :ingredient_id
end
