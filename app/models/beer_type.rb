class BeerType < ApplicationRecord

  validates :title, :text, presence: true
  validates :title, length: { minimum: 5, maximum: 40 }
  validates :title, uniqueness: true

end
