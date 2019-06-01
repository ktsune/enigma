class Rotation

  def initialize(message, offset)
    @message = message
    @offset = offset
  end

  def assign_offsets_to_letters
    offset_hash = {}
    letters = 'a'..'d'

    @offset.each do |num|
      letters.each do |letter|
        offset_hash[letter] = num
      end
    end
    offset_hash
  end

  def shift
  str = ""
  alpha = ("a".."z").to_a << " "
    # => for each letter in msg,
    @message.split("").each_with_index do |msg_letter, index_msg|
    # => use msg index to find offset index
      @offset.each_with_index do |offset, offset_index|
      # => look up alpha index using msg letter
        if index_msg == offset_index
          if alpha.include?(msg_letter)
# => use new index to look up new char in alpha
            str = alpha.rotate(index_msg + offset)
          end
        end
        binding.pry
      end
      binding.pry
    end
  end
end


# @message.split("").each do |msg_letter|
  # alpha.with_index do |letter, index|
  #   if letter == msg_letter
  #     assign_offsets_to_letters.each do |letter_key, offset_num|
  #       @message.split("").rotate(index + offset_num)
  #       # return letter of associated index
  #         letter
