class BidsController < ApplicationController
  def index
    @bids = Bid.limit(20).order(price: :DESC)
  end

  def create
    @bid = Bid.new(bid_params)

    if @bid.save
      @bids = Bid.limit(20).order(price: :DESC)
      render :index, status: :created
    else
      flash[:errors] = @bid.errors.full_messages
      @bids = Bid.limit(20).order(price: :DESC)
      render :index, status: :unprocessible_entity
    end
  end

  def bid_params
    params.require(:bid).permit(
      :alias,
      :email,
      :name,
      :phone_number,
      :price,
    )
  end
end
