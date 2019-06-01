require './test/test_helper'

class RotationTest < Minitest::Test
  def setup
    @rotation = Rotation.new("hello world", [3,27,73,20])
  end

  def test_it_exists
    assert_instance_of Rotation, @rotation
  end

  def test_find_offset
    assert_equal 3, @rotation.find_offset(0)
  end

  def test_it_finds_new_char_in_alpha
    assert_equal "k", @rotation.lookup_char(3, "h")
  end

  def test_it_shifts_chars
    assert_equal "keder ohulw", @rotation.shift
  end
end
