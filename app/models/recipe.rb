class Recipe < ApplicationRecord
  has_many :added_ingredients
  has_many :ingredients, through: :added_ingredients
  validates :name, presence: true, uniquness: true
end
