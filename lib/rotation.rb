class Rotation

  def initialize(encrypt=true, message, offset)
    @message = message
    @offset = offset
    @encrypt = encrypt
  end

  def find_offset(msg_index)
    # => always return remainder of msg_index / offset length as offset index
    offset_index = msg_index % @offset.length
    @offset[offset_index]
  end

  def lookup_char(offset_value, msg_letter)
    alpha = ("a".."z").to_a << " "
    found_index = 0
    alpha.each.with_index do |letter, letter_index|
      found_index = letter_index if letter == msg_letter
    end
    alpha.include?(msg_letter.downcase) ? rotated_alpha(offset_value, found_index) : msg_letter
  end

  def rotated_alpha(offset_value, found_index)
    alpha = ("a".."z").to_a << " "
    if !@encrypt
      offset_value *= -1
    end
    rotated_alpha = alpha.rotate(offset_value)
    rotated_alpha[found_index]
  end

  def shift
    encrypted_or_decrypted_msg = ""
    @message.split("").each_with_index do |msg_letter, msg_index|
      offset = find_offset(msg_index)
      new_char = lookup_char(offset, msg_letter)
      encrypted_or_decrypted_msg += new_char
    end
    encrypted_or_decrypted_msg
  end
end
