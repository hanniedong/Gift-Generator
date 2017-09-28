class ReceiversController < ApplicationController
  include SessionsHelper

  def show
    if logged_in?
      @user = User.find(session[:user_id])
      @receiver = Receiver.find(params[:id])
    else
      redirect_to root_path
    end 
  end 

end