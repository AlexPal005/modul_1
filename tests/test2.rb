require_relative "../task_2"

require "test/unit"

class TestSimpleNumber < Test::Unit::TestCase
  $counter = Counter.new
  def test_first
    assert_equal([2,3], $counter.get_list_buses_for_route_number(11))
    assert_equal(-1, $counter.get_list_buses_for_route_number(15))
  end
  def test_second
    assert_equal([1,2], $counter.get_list_buses_more_period(20))
    assert_equal(-1, $counter.get_list_buses_more_period(25))
  end
  def test_third
    assert_equal([4,5], $counter.get_list_buses_more_kilometrage(300))
    assert_equal(-1, $counter.get_list_buses_more_kilometrage(600))
  end

end
