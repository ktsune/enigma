require './test/test_helper'

class EncryptTest < Minitest::Test
  def setup
    @encrypt = Encrypt.new("hello world", "02715", "040895")
  end

  def test_it_exists
    assert_instance_of Encrypt, @encrypt
  end

  def test_it_splits_key
    expected =
      [02],
      [27],
      [71],
      [15]

    assert_equal expected, @encrypt.split_key
  end

  def test_it_transforms_date
    expected = 1025
    assert_equal expected, @encrypt.transform_date
  end

  def test_it_adds_date_and_offset
    expected =
    [3],
    [27],
    [73],
    [20]
    assert_equal expected, @encrypt.add
  end
end
