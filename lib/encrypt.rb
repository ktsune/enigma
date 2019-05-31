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

  def transform_date
    squared = @date.to_i**2
    squared.to_s.slice(-4..-1)
  end
end
