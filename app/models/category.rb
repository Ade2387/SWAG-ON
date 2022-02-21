class Category < ApplicationRecord
  has_many :car_categories, dependent: :destroy
  has_many :cars, through: :car_categories
end
