class IndexController < ApplicationController
  include SessionsHelper

  def index 
    if logged_in?
      @user = User.find(session[:user_id])
    else
      redirect_to login_path
    end 
  end 

end