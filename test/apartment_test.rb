require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require 'pry';


class ApartmentTest < Minitest::Test
  def test_it_exists

    apartment = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_instance_of Apartment, apartment
  end

  def test_it_has_readable_attributes

    apartment = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal "A1", apartment.number
    assert_equal 1200, apartment.monthly_rent
    assert_equal 1 , apartment.bathrooms
    assert_equal 1 , apartment.bedrooms

  end

  def test_it_can_add_renters

    apartment = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    
    assert_equal renter1, apartment.add_renter(renter1)
  end

end
