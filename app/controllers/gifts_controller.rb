class GiftsController < ApplicationController

  def new 
    @receiver = Receiver.find(params[:receiver_id])
    @gift =Gift.new
  end 

  def create
    @gift = Gift.new(gift_params)
    if @gift.save
      redirect_to index_index_path
    else 
      @errors
      render 'new'
    end
  end 

  private

  def gift_params
    params.require(:gift).permit(:title, :description, :link, :giver_id, :receiver_id)
  end 
end
