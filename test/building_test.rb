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

    def test_can_add_units_and_renters
        building = Building.new
        unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
        unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
        building.add_unit(unit1)
        building.add_unit(unit2)
        renter1 = Renter.new("Aurora")
        assert_equal [unit1, unit2], building.units
        unit1.add_renter(renter1)
        building.renters
        assert_equal ["Aurora"], building.renters
      end

      def test_can_average_rent
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(unit1)
    building.add_unit(unit2)
    renter1 = Renter.new("Aurora")
    assert_equal [unit1, unit2], building.units
    unit1.add_renter(renter1)
    renter2 = Renter.new("Tim")
    unit1.add_renter(renter2)
    assert_equal 1099.5, building.average_rent
  end



end
