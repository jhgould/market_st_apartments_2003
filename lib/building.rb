# building class


class Building
  attr_reader :units
  attr_accessor :renter

  def initialize(units = [])
    @units = units
    @renters = []
  end


  def add_unit(unit)
    @units << unit
  end


  def renters
    renter_names = @units.map do |unit|
      if unit.renter != nil
         unit.renter.name
      end
    end
    renter_names.compact
  end

  def average_rent
  renter_price = 0.0
    @units.each do |unit|
    renter_price += unit.monthly_rent
    end
    renter_price/(@units.count)
  end





end
