class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates_uniqueness_of :ingredient_id, scope: :cocktail_id
  accepts_nested_attributes_for :cocktail
  accepts_nested_attributes_for :ingredient
end
