require './test/test_helper'

class RotationTest < Minitest::Test
  def setup
    @rotation = Rotation.new("hello world", "02715", "040895")
  end

  def test_it_exists
    assert_instance_of Rotation, @rotation
  end 
end
