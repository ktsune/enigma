class Enigma
  def encrypt(message, key=nil, date=nil)
    offset = Offset.new(key, date)
    rotation = Rotation.new(true, message, offset.add_key_and_date)
    {encryption: rotation.shift, key: offset.key, date: offset.date}
  end

  def decrypt(message, key, date=nil)
    offset = Offset.new(key, date)
    rotation = Rotation.new(false, message, offset.add_key_and_date)
    {decryption: rotation.shift, key: offset.key, date: offset.date}
  end
end
