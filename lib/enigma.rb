class Enigma

  def encrypt(message, key, date)
    encryption_hash = {}
    offset = Offset.new(key, date)
    new_offset = offset.add_key_and_date
    rotation = Rotation.new(message, new_offset)
    encryption_hash[:encryption] = rotation.shift
    encryption_hash[:key] = key
    encryption_hash[:date] = date
    encryption_hash
  end
end
