class User < ApplicationRecord
  has_many :user_favorites
  has_many :movies, through: :user_favorites
  has_many :games, through: :user_favorites
  has_many :songs, through: :user_favorites

  validates :username, presence: true
  validates :username, uniqueness: true

  def has_any_favorites? 
    if self.user_favorites.empty? == true 
      return false
    else
      return true
    end
  end

end
