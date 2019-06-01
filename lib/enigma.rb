class Enigma

  def encrypt(message, key, date)
    encryption_hash = {}
    offset = Offset.new(key, date)
    new_offset = offset.add_key_and_date
    rotation = Rotation.new(true, message, new_offset)
    encryption_hash[:encryption] = rotation.shift
    encryption_hash[:key] = key
    encryption_hash[:date] = date
    encryption_hash
  end

  def decrypt(message, key, date)
    decryption_hash = {}
    offset = Offset.new(key, date)
    new_offset = offset.add_key_and_date
    rotation = Rotation.new(false, message, new_offset)
    decryption_hash[:decryption] = rotation.shift
    decryption_hash[:key] = key
    decryption_hash[:date] = date
    decryption_hash
  end
end
