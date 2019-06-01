class Offset
  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
  end

  def split_key
    @key.split("").each_cons(2).map do |pair|
      pair.map do |string_num|
        string_num
      end.join("").to_i
    end
  end

  def transform_date
    squared = @date.to_i**2
    get_last_four = squared.to_s.slice(-4..-1).to_i
    get_last_four.to_s.chars.map(&:to_i)
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
