class ChomperController < ApplicationController
  require 'csv'
  def new
  end

  def create
    CSV.foreach(params["auctions"].path, {headers: :first_row}) do |row|
      unless row.empty?
        data = row.to_h
        binding.pry if data['auction name'].nil?
        a = Auction.create_with(Auction.parse_auction_data(data)).find_or_create_by(name: data['auction name'])
        a.save
        a.vehicles.create(Vehicle.parse_vehicle_data(data))
      end
    end

    redirect_to(action: 'index')
  end

  def index
    @auctions = Auction.includes(:vehicles).all
  end
end
