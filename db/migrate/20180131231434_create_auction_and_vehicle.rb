class CreateAuctionAndVehicle < ActiveRecord::Migration[5.0]
  def change
    create_table :auctions do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end

    create_table :vehicles do |t|
      t.belongs_to :auction, index: true

      t.string :year
      t.string :make
      t.string :model
      t.string :stock_number
      t.string :winning_bid
      t.string :seller_payout
      t.string :description

      t.timestamps
    end
  end
end
