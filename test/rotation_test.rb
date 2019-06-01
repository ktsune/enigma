require './test/test_helper'

class RotationTest < Minitest::Test
  def setup
    # skip
    @rotation = Rotation.new("hello world", [3,27,73,20])
  end

  def test_it_exists
    assert_instance_of Rotation, @rotation
  end

  # def test_it_assigns_offsets_to_letters
  #   expected =
  #     {
  #       "a" => 3,
  #       "b" => 27,
  #       "c" => 73,
  #       "d" => 20
  #     }
  #
  #   assert_equal expected, @rotation.assign_offsets_to_letters
  # end

  def map_offset_keys_to_msg

  end

  def test_it_shifts_chars
    # skip
    assert_equal "keder ohulw", @rotation.shift
  end
end
