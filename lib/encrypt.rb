require 'enumerator'

class Encrypt
  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
  end

  def split_key
    @key.split("").each_cons(2).map do |pair|
      pair
    end
  end
end
