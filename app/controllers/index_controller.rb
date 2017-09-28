class IndexController < ApplicationController
  include SessionsHelper

  def index 
    if logged_in?
      @user = current_user
    else
      redirect_to login_path
    end 
  end 

  def show 
    if logged_in?
    end
  end
end