class Car < ApplicationRecord
  belongs_to :user
  has_many :car_categories, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :categories, through: :car_categories
  validates :brand, :model, :description, presence: true
  validates :price, :capacity, presence: true, numericality: { only_integer: true }
  attribute :occasion, default: "N/A"
  attribute :image, default: "https://i.pinimg.com/564x/77/b8/1b/77b81bd9b49ea414cc73c06481c965e1.jpg"
end
