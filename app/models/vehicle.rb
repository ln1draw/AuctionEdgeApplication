class Vehicle < ApplicationRecord
  belongs_to :auction

  def self.parse_vehicle_data(data)
    ret = {}
    ret[:year] = data['vehicle year']
    ret[:make] = data['vehicle make']
    ret[:model] = data['vehicle model']
    ret[:stock_number] = data['vehicle stock number']
    ret[:winning_bid] = data['winning bid']
    ret[:seller_payout] = data['seller payout']
    ret[:description] = data['description']
    ret
  end
end
