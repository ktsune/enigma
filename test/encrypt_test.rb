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
      ["0", "2"],
      ["2", "7"],
      ["7", "1"],
      ["1", "5"]
    assert_equal expected, @encrypt.split_key
  end
end
