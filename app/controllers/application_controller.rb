class ApplicationController < ActionController::Base
  before_action :current_user

  def home
  end

  def about
  end

  private

  def current_user
    @logged_in_user = User.find_by(id: session[:user_id]) 
  end 
  
end
