class ReceiversController < ApplicationController
  include SessionsHelper

  def new 
    @receiver = Receiver.new
  end 

  def create
    @receiver = Receiver.create(receiver_params)
    if @receiver.save
      redirect_to index_index_path
    else 
      render 'new'
    end
  end

  def show
    @receiver = Receiver.find(params[:id])
    if logged_in? && Receiver.find(@receiver.id).giver_id == current_user.id
      @gifts = @receiver.gifts
    else
      redirect_to root_path
    end 
  end 

  private 

  def receiver_params
    params.require(:receiver).permit(:first_name, :last_name, :relationship, :giver_id)
  end

end 