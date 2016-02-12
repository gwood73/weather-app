require "yahoo_weatherman" 
 
 
 def weather_today(location) 
    
   client = Weatherman::Client.new 
 
 
   weather = client.lookup_by_location(location) 
 
 
   condition = weather.condition["text"] 
 
 
   puts "The weather today is #{condition.downcase}." 
 
 
 end 
 
 
 puts "Please insert your zip code:" 
 location = gets.chomp 

 
 weather_today(location) 

