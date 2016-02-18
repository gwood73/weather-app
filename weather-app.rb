####### Weather App #######  
    require ('yahoo_weatherman')  
      
      
    def current_weather  
      
    #Accept a location  
    puts "What is your location?"  
    location = gets.chomp  
      
    client = Weatherman::Client.new(options = {:unit => 'f'}) #convert default unit to F  
    weather = client.lookup_by_location(location)  
      
    #create a string to describe location returned from zipcode  
    location = weather.location
    str_location = str_location.to_i  
    location = "\n   ...current weather for #{location['city']}, #{location['region']}  #{location}"  
        puts (str_location)  
      
    #Assign some variables  
    today = Time.now.day  
    tomorrow = today + 1  
    list = weather.forecasts  
      
    list.each do |item|  #Loop each day of weather forecast  
        puts "\n"  
        if item['date'].day == today  
            str_day = "  Today's"  
            elsif item['date'].day == today +1  
            str_day = "  Tomorrow's"  
            else  
            str_day = "  #{item['date'].strftime("%A")}'s"  
        end  
          
        #display message  
        str_forecast = "#{str_day} forecast: #{item['text']}, with a high of #{item['high']}F and a low of #{item['low']}F."  
        puts str_forecast  
    end  
    end  
      
    #Run my method  
    current_weather 

