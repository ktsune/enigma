require 'enumerator'

class Offset
  attr_reader :key, :date

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
  end

  def split_key
     b = @key.split("").each_cons(2).map do |pair|
       pair.map do |string_num|
        # binding.pry
        string_num
      end.join("").to_i
    end
     b.map do |num| num.to_s.split.map do |str| str.to_i end  end
    # binding.pry
  end

  def transform_date
    squared = @date.to_i**2
    a = squared.to_s.slice(-4..-1).to_i
    b = a.to_s.split("").each_cons(1).map do |num| p num end
      # binding.pry
    b.map do |num| num.map do |num| num.to_i end end
  end

  def add_key_and_date
    # split_key.zip(transform_date)
    # [split_key][transform_date].transpose.map { |pair| pair.reduce(:+) }
  end
end
