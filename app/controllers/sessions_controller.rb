class SessionsController < ApplicationController

  def login # renders log-in page
  end

  def logging_in # logs user in
    @user = User.find_by(username: params[:session][:username])
    if @user 
      session[:user_id] = @user.id
      redirect_to home_path
    else
      flash[:errors] = ["Username doesn't exist, please try again"]
      redirect_to login_path
    end
  end

  def log_out # logs user out
    session[:user_id] = nil
    redirect_to home_path
  end

  private 

end