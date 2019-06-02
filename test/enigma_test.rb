require './test/test_helper'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
    assert_instance_of Enigma, @enigma
  end

  def test_it_encrypts_message_with_key_and_date
    expected =
       {
         encryption: "keder ohulw" ,
         key: "02715",
         date: "040895"
       }
    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end

  def test_it_decrypts_message_with_key_and_date
    expected =
      {
        decryption: "hello world",
        key: "02715",
        date: "040895"
      }
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_it_encrypts_message_with_key_and_todays_date
    encrypted = @enigma.encrypt("hello world", "02715")
    date = Date.today.strftime("%d%m%y")

    expected =
      {
        encryption: "mfhatasdwm ",
        key: "02715",
        date: date
      }
    assert_equal expected, encrypted
  end

  def test_it_decrypts_message_with_key_and_todays_date
    encrypted = @enigma.encrypt("hello world", "02715")
    date = Date.today.strftime("%d%m%y")

    expected =
      {
        decryption: "hello world",
        key: "02715",
        date: date
      }
    assert_equal expected, @enigma.decrypt(encrypted[:encryption], "02715")
  end

  # def test_it_encrypts_message_using_random_key_and_todays_date
  #   skip
  #   enigma.encrypt("hello world")
  #   #=> # encryption hash here
  # end
end
