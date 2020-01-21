class UserFavorite < ApplicationRecord
  belongs_to :user
  belongs_to :movie, optional: true
  belongs_to :game, optional: true
  belongs_to :song, optional: true
end
