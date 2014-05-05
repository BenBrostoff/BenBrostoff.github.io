class NBAPlayer

@@no_players = 0

    def initialize(name, birthYear, height, weight, number, position, team) #initialize and use of instance variables
    	@name = name
		@birthYear = birthYear
		@height = height
		@weight = weight #inlbs
		@number = number #ininches
		@position = position
		@team = team
        @@no_players += 1 #evidencing new player has been creating
	end

	def positionRecommend #recommends position based on information about created object 
        if @height < 72
        "PG"
        elsif (@height >= 72 && @height < 75)
        "SG"
        elsif (@height >= 75 && @height < 78)
        "SF"
	    elsif (@height >= 78 && @height < 81)
        "PF"
        else
		"C"  
        end
    end
    
    def outofPosition #returns "diagnostic" output based on information about created object
     	 if positionRecommend != @position
     	 	@name + " is currently out of position." 
     	 else
	 	 	@name +  " is in the right position."
	 	 end
	 end

	 def roughAge(year) #only method here that uses a parameter
	 	year - @birthYear  #year is a local variable - can only be accessed in the roughAge method
	 end
     
     def current_player_count #counts number of players added using program
     @@no_players #notice this is a class varible
     end

end


#Output tests to assure class is working as it's supposed to 
dirk = NBAPlayer.new("Dirk Nowitzki", 1978, 84, 245, 41, "C", "Mavericks")
p "#{dirk.instance_variable_get(:@name)} is #{dirk.roughAge(2014)} years old."
p "Our state of the art program recommends this #{dirk.instance_variable_get(:@name)} start at #{dirk.positionRecommend}."
dirk.outofPosition
p "#{dirk.instance_variable_get(:@name)} is one of #{dirk.current_player_count} object(s) created using this program."


pierce = NBAPlayer.new("Paul Pierce", 1977, 79, 236, 34, "SG", "Nets")
p "#{pierce.instance_variable_get(:@name)} is #{pierce.roughAge(2014)} years old."
p "Our state of the art program recommends this #{pierce.instance_variable_get(:@name)} start at #{pierce.positionRecommend}."
pierce.outofPosition
p "#{pierce.instance_variable_get(:@name)} is one of #{pierce.current_player_count} object(s) created using this program."



