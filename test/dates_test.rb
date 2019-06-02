require './test/test_helper'

class DatesTest < Minitest::Test
  def setup
    @dates = Dates.new
  end

  def test_it_exists
    assert_instance_of Dates, @dates
  end

  def test_it_generates_random_date
    return_val = Date.new(2019,5,30)
    Date.stubs(:today).returns(return_val)

    assert_equal "300519", @dates.random_date
  end
end
