class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :cars, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :username, presence: true, uniqueness: true
  attribute :avatar, default: "https://w7.pngwing.com/pngs/329/446/png-transparent-deadpool-football-manager-2017-spider-man-football-manager-2018-youtube-deadpool-comics-face-photography-thumbnail.png"
end
