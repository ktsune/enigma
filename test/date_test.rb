require './test/test_helper'

class DateTest < Minitest::Test
  def setup
    @date = Date.new
  end

  def test_it_exists
    assert_instance_of Date, @date 
  end
end
