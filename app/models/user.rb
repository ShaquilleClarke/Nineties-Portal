class User < ApplicationRecord
  has_many :user_favorites
  has_many :movies, through: :user_favorites
  has_many :games, through: :user_favorites
  has_many :songs, through: :user_favorites

  validates :username, presence: true
  validates :username, uniqueness: true
end
