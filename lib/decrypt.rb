require './lib/enigma'
require './lib/key'
require './lib/dates'
require './lib/offsets'
require './lib/rotation'
require 'date'

handle = File.open(ARGV[0], "r")

message_to_decrypt = handle.read

handle.close

key = ARGV[2]
date = ARG[3]

enigma = Enigma.new
decrypt = enigma.decrypt(message_to_decrypt, key=nil, date=nil)

file_to_decrypt = File.open(ARGV[1], "w")

file_to_decrypt.write(decrypt[:decryption])
# key.write(decrypt[:key])
# date.write(decrypt[:date])

puts "Created '#{ARGV[1]}' with the key #{decrypt[:key]} and date #{decrypt[:date]}"

file_to_decrypt.close
# key.close
# date.close
