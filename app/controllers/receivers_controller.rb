class ReceiversController < ApplicationController
  include SessionsHelper

  def show
    @receiver = Receiver.find(params[:id])
    if logged_in? && Gift.find_by(receiver_id: @receiver.id).giver_id == current_user.id
      @gifts = @receiver.gifts
    else
      redirect_to root_path
    end 
  end 

end