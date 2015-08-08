require 'weatherboy'

puts "Enter your Zipcode for the local weather:"
zipcode = gets.chomp

weatherboy = Weatherboy.new(zipcode)

w = weatherboy.current
puts "=================================="
puts "\n"    

puts "The weather for #{zipcode} is '#{w.weather}' with a temp of #{w.temp_f} degrees."

puts "\n"
puts "=================================="

puts "Would you like the 2 day forcast for #{zipcode}? (Y/N)"
for_answer = gets.chomp.downcase

if for_answer == "y"
  f = weatherboy.forecasts
 
  f.each_with_index do |v, i|
    puts f[i].title
    puts f[i].text
    puts "=================================="
    puts "\n"
  end
end
