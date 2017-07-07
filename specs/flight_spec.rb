require('minitest/autorun')
require_relative('../flight.rb')
require_relative('../airport.rb')

class FlightTest < MiniTest::Test

  def setup
    @flight1 = Flight.new("jet", "piloted")
    @flight2 = Flight.new("propellor", "drone")
    @flight3 = Flight.new("jet", "drone")
  end

  def test_engine_type
    assert_equal("jet", @flight3.engine_type)
  end

  def test_control_type
    assert_equal("piloted", @flight1.control_type)
  end 

  def test_set_control_type
    @flight1.control_type = "drone"
    assert_equal("drone", @flight1.control_type)
  end

end