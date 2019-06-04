require './lib/enigma'
require './lib/key'
require './lib/dates'
require './lib/offsets'
require './lib/rotation'
require 'date'

handle = File.open(ARGV[0], "r")

message_to_decrypt = handle.read

handle.close

enigma = Enigma.new

key = ARGV[2]
date = ARGV[3]

decrypt = enigma.decrypt(message_to_decrypt, key, date)

file_to_decrypt = File.open(ARGV[1], "w")

file_to_decrypt.write(decrypt[:decryption])
# key.write(decrypt[:key])
# date.write(decrypt[:date])

puts "Created '#{ARGV[1]}' with the key #{decrypt[:key]} and date #{decrypt[:date]}"

file_to_decrypt.close
# key.close
# date.close
