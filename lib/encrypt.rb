require './lib/enigma'
require './lib/key'
require './lib/dates'
require './lib/offsets'
require './lib/rotation'
require 'date'

handle = File.open(ARGV[0], "r")

message_to_encrypt = handle.read

handle.close

enigma = Enigma.new
encrypt = enigma.encrypt(message_to_encrypt, key=nil, date=nil)

writer = File.open(ARGV[1], "w")

writer.write(encrypt)

puts "Created '#{ARGV[1]}' with the key #{encrypt[:key]} and date #{encrypt[:date]}"

writer.close
