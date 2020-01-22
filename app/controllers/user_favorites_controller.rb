class UserFavoritesController < ApplicationController

  def create 
    
  end

  private

    def user_favorite_params
      params.require(:user_favorite).permit(:user_id, :movie_id, :song_id, :game_id)
    end

end