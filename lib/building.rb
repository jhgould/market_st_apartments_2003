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


  def add_renter(renter)
    binding.pry
    #need to access the name element within the array
    @renters << renter.name
  end





end
