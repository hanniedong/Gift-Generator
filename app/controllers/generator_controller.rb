class GeneratorController < ApplicationController
  include SessionsHelper 

  def generate
    if logged_in?
      @gifts = Receiver.find(generator_params[:receiver]).gifts
      @gift = @gifts.sample
      render 'index/index'
    else
      redirect_to login_path
    end 
  end 

  private

  def generator_params
    params.require(:generator).permit(:receiver)
  end

end