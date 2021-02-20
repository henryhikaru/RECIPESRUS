class Ingredient < ApplicationRecord
  has_many :added_ingredients
  has_many :recipes, through: :added_ingredients
  validates :name, presence: true, uniqueness: true

end
