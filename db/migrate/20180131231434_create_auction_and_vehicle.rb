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

      t.integer :year
      t.string :make
      t.string :model
      t.integer :stock_number
      t.integer :winning_bid
      t.integer :seller_payout
      t.string :description
      t.integer :profit

      t.timestamps
    end
  end
end
