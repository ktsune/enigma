require './test/test_helper'

class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new("hello world", "02715", "040895")
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_it_splits_key
    expected =
      [02, 27, 71, 15]

    assert_equal expected, @offset.split_key
  end

  def test_it_transforms_date
    expected =
      [1, 0, 2, 5]

    assert_equal expected, @offset.transform_date
  end

  def test_it_combines_date_and_key
    expected = [02, 1], [27, 0], [71, 2], [15, 5]
    assert_equal expected, @offset.combine_date_and_key
  end

  def test_it_adds_date_and_offset
    # skip
    expected =
    [3,27,73,20]

    assert_equal expected, @offset.add_key_and_date
  end
end
