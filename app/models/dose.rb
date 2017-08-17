class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates_uniqueness_of :ingredient, scope: :cocktail
  validates :cocktail, presence: true
  validates :ingredient, presence: true
end
