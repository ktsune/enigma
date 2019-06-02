require './lib/enigma'
require './lib/key'
require './lib/offsets'
require './lib/rotation'

# aFile = File.new("encrypted", "mode")
   # ... process the file
handle = File.open(ARGV[0], "r")

message_to_encrypt = handle.read

handle.close

enigma = Enigma.new
encrypt = enigma.encrypt(message_to_encrypt, key=nil, date=nil)

writer = File.open(ARGV[1], "w")

writer.write(message_to_encrypt.upcase)

writer.close
