class Car < ApplicationRecord
  belongs_to :user
  has_many :car_categories, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :categories, through: :car_categories
  has_many :reservations
  has_one_attached :photo
  validates :brand, :model, :description, presence: true
  validates :price, :capacity, presence: true, numericality: { only_integer: true }

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :brand, :model, :occasion ],
    associated_against: {
      categories: [:name]
    },
    using: {
      tsearch: { prefix: true }
    }
end
