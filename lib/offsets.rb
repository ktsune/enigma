class Offset
  attr_reader :key, :date

  def initialize(key, date)
    @key = key
    @date = date
  end

  def split_key
    if @key == nil
      key = Key.new
      @key = key.random
    end
    @key.split("").each_cons(2).map { |pair| pair.map { |string_num| string_num }.join("").to_i }
  end

  def transform_date
    if @date == nil
      dates = Dates.new
      @date = dates.random_date
    end
    squared = @date.to_i**2
    squared.to_s.slice(-4..-1).to_i.to_s.chars.map(&:to_i)
  end

  def combine_date_and_key
    split_key.zip(transform_date)
  end

  def add_key_and_date
    combine_date_and_key.map do |pair|
      pair.sum
    end
  end
end
