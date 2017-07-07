require('minitest/autorun')
require_relative('../airport.rb')
require_relative('../flight.rb')

class AirportTest < MiniTest::Test

  def setup
    @airport1 = Airport.new("Heathrow")
    @flight1 = Flight.new("jet", "piloted")
    @flight2 = Flight.new("propellor", "drone")
    @flight3 = Flight.new("jet", "drone")
  end

  def test_count_plane_on_landing_strip__zero
    result = @airport1.count_plane_on_landing_strip()
    assert_equal(0, result)
  end

  def test_land_plane
    @airport1.land_plane(@flight1)
    @airport1.land_plane(@flight2)
    assert_equal(2, @airport1.count_plane_on_landing_strip)
  end

  def test_count_plane_in_hanger__zero
    result = @airport1.count_plane_in_hanger()
    assert_equal(0, result)
  end

  def test_move_plane_to_hanger
    @airport1.move_plane_to_hanger(@flight1)
    assert_equal(1, @airport1.count_plane_in_hanger)
    assert_equal(0, @airport1.count_plane_on_landing_strip)
  end

end

