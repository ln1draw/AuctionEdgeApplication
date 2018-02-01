class Vehicle < ApplicationRecord
  belongs_to :auction
  validates :stock_number, presence: true

  def self.parse_vehicle_data(data)
    ret = {}
    ret[:year] = data['vehicle year'].to_i
    ret[:make] = data['vehicle make']
    ret[:model] = data['vehicle model']
    ret[:stock_number] = data['vehicle stock number'].to_i
    ret[:winning_bid] = data['winning bid'].to_i
    ret[:seller_payout] = data['seller payout'].to_i
    ret[:description] = data['description']
    ret[:profit] = ret[:winning_bid] - ret[:seller_payout]
    ret
  end
end
