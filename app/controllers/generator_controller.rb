class GeneratorController < ApplicationController
  include SessionsHelper 
  
  def generate
    if logged_in?
      @user = current_user
    else
      redirect_to login_path
    end 
  end 

  private

  def generate_params
    params.require(:generator).permit(:receiver)
  end

end