require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/renter'
require './lib/building'
require 'pry';


class BuildingTest < Minitest::Test
  def test_it_exists

    building = Building.new

    assert_instance_of Building, building
  end

  def test_it_has_readable_attributes

    building = Building.new

    assert_equal [], building.units
    assert_equal [], building.renters
  end

    def test_it_can_add_units
       building = Building.new
       unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

      assert_equal [unit1], building.add_unit(unit1)
    end

    def test_it_can_add_renters

      building = Building.new
      renter1 = Renter.new("Aurora")
      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
      building.add_unit(unit1)
      unit1.add_renter(renter1)
      building.add_renter(renter1)



      assert_equal ["Aurora"], building.add_renter
    end




end
