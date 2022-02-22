class Car < ApplicationRecord
  belongs_to :user
  has_many :car_categories, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :categories, through: :car_categories
  validates :brand, :model, :occasion, :description, presence: true
  validates :price, :capacity, presence: true, numericality: { only_integer: true }
end
