class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses
  has_many :cocktails, through: :doses

  def destroy
    raise ActiveRecord::InvalidForeignKey, 'Boohoo' unless doses.length == 0
    super
  end
end
