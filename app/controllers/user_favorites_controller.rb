class UserFavoritesController < ApplicationController

  def add_to_favorites
    check_if_favorite(user_favorite_params)
  end

  def remove_from_favorites
    if params[:user_favorite][:movie_id]
      @favorite = @logged_in_user.user_favorites.find_by(movie_id: params[:user_favorite][:movie_id])
      @favorite.destroy
      redirect_to request.referrer
    elsif params[:user_favorite][:song_id]
      @favorite = @logged_in_user.user_favorites.find_by(song_id: params[:user_favorite][:song_id])
      @favorite.destroy
      redirect_to request.referrer
    elsif params[:user_favorite][:game_id]
      @favorite = @logged_in_user.user_favorites.find_by(game_id: params[:user_favorite][:game_id])
      @favorite.destroy
      redirect_to request.referrer
    end
  end

  private

    def user_favorite_params
      params.require(:user_favorite).permit(:user_id, :movie_id, :song_id, :game_id)
    end

    def check_if_favorite(params)
      if params[:movie_id]
        check_movie(params)
      elsif params[:song_id]
        check_song(params)
      elsif params[:game_id]
        check_game(params)
      end
    end

      def check_movie(params)
        if @logged_in_user.user_favorites.where(movie_id: params[:movie_id]).empty?
          @user_favorite = UserFavorite.create(user_id: session[:user_id])
          @user_favorite.update(user_favorite_params)
          # redirect_to request.referrer
        else
          flash[:errors] = ["This item is already in your favorites"]
          redirect_to request.referrer
        end
      end

      def check_song(params)
        if @logged_in_user.user_favorites.where(song_id: params[:song_id]).empty?
          @user_favorite = UserFavorite.create(user_id: session[:user_id])
          @user_favorite.update(user_favorite_params)
          # redirect_to request.referrer
        else
          flash[:errors] = ["This item is already in your favorites"]
          redirect_to request.referrer
        end
      end

      def check_game(params)
        if @logged_in_user.user_favorites.where(game_id: params[:game_id]).empty?
          @user_favorite = UserFavorite.create(user_id: session[:user_id])
          @user_favorite.update(user_favorite_params)
          # redirect_to request.referrer
        else
          flash[:errors] = ["This item is already in your favorites"]
          redirect_to request.referrer
        end
      end

end