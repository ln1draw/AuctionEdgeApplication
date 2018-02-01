class ChomperController < ApplicationController
  require 'csv'
  def new
  end

  def create
    CSV.foreach(params["auctions"].path, {headers: :first_row}) do |row|
      data = row.to_h
      a = Auction.create_with(Auction.parse_auction_data(data)).find_or_create_by(name: data['auction name'])
      v = Vehicle.create_with(Vehicle.parse_vehicle_data(data)).find_or_create_by(stock_number: data['vehicle stock number'])
      a.vehicles << v
    end

    redirect_to(action: 'index')
  end

  def index
    @auctions = Auction.includes(:vehicles).all
  end
end
