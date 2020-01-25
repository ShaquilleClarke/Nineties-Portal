class UsersController < ApplicationController

  def favorites #favorites page
    if @logged_in_user
      @favorite_movies = @logged_in_user.movies 
      @favorite_songs = @logged_in_user.songs 
      @favorite_games = @logged_in_user.games 
    else
      flash[:errors] = ["You must be logged in to view your favorites page. Create an account?"]
      redirect_to create_account_path
    end
  end

  def create_account
    @user = User.new
  end

  def create 
    @user = User.create(user_params)

    if @user.valid?
      session[:user_id] = @user.id
      redirect_to home_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to create_account_path
    end
  end

  private

    def user_params
      params.require(:user).permit(:username)
    end

end