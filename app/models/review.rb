class Review < ApplicationRecord
  belongs_to :car
  belongs_to :user
  validates :content, presence: true, length: { mininum: 10, maximum: 300 }
  validates :rating, presence: true, numericality: { only_integer: true, greater_than: -1, less_than: 6 }
end
