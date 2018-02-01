class Auction < ApplicationRecord
  has_many :vehicles


  def self.parse_auction_data(data)
    ret = data.select {|key, value| ['city', 'state', 'zip'].include?(key) }
    ret[:name] = data['auction name']
    ret[:street_address] = data['street address']
    ret
  end
end
