# apartment class
require './lib/renter'

class Apartment
  attr_reader :number, :monthly_rent, :bathrooms, :bedrooms, :renter

  def initialize(apartment_info)
     # @apartment_info = apartment_info.map do |k, v|
     #   apartment_info[k] = v
    # end
    @number = apartment_info[:number]
    @monthly_rent = apartment_info[:monthly_rent]
    @bathrooms = apartment_info[:bathrooms]
    @bedrooms = apartment_info[:bedrooms]
    @renter = apartment_info[:renter]

  end

  def add_renter(renter)
    @renter = renter
  end

end
