# Write your solution here!
require "rqrcode"

puts "What kind of QR code would you like to generate?"

puts "1. Open a URL"
puts "2. Join a wifi network"


kind_of_code = gets.chomp

if kind_of_code.include?"1"
  puts "What URL would you like to use?"
new_text = gets.chomp

elsif kind_of_code.include?"2"
puts " What is your wifi network name?"
wifi_network = gets.chomp
puts "What is your wifi password?"
wifi_password = gets.chomp
new_text = "WIFI:T:WPA;S:#{wifi_network};P:#{wifi_password};"

end
puts "What would you like to call the PNG?"
puts

filename = gets.chomp

qrcode = RQRCode::QRCode.new(new_text)
png = qrcode.as_png({ :size => 500 })
IO.binwrite("#{filename}.png", png.to_s)
