class CarCategory < ApplicationRecord
  belongs_to :category
  belongs_to :car
end
