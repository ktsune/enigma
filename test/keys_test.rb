require './test/test_helper'

class KeyTest < Minitest::Test
  def setup
    @key = Key.new
  end

  def test_it_exists
    assert_instance_of Key, @key
  end

  def test_it_generates_random_key
    assert_equal 5, @key.random.length
  end

  def test_random_is_a_string
    assert @key.random.is_a? String
  end
end
