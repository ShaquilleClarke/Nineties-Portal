class UsersController < ApplicationController

  def show
    @user = params[:id]

    # user_favorites = UserFavorite.where(user_id: @user.id)

    # @user_movies = UserFavorite.where(user_id: @user.id, movie_id: !nil)
    # @user_songs
    # @user_games
  end

  def new
    @user = User.new
  end

  def create 
    @user = User.create(user_params)

    if @user.valid?
      redirect_to home_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  private

    def user_params
      params.require(:user).permit(:username)
    end

end