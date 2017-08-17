class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  before_destroy :raise_error

  validates :name, presence: true, uniqueness: true

  private

  def raise_error
    if self.doses.count > 0
      raise ActiveRecord::InvalidForeignKey
    end
  end
end
