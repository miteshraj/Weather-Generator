require 'unirest'

system 'clear'

puts "Please enter your zip code for hourly weather information!"
city = gets.chomp.to_i

weather = Unirest.get("https://samples.openweathermap.org/data/2.5/forecast/hourly?zip=#{city}&appid=b6907d289e10d714a6e88b30761fae22")
response = weather.body


puts response