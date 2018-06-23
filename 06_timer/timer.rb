class Timer
  attr_reader :seconds, :minutes

  def initialize
  	@seconds = 0
  	@minutes = 0
  	@hours = 0
  end

  def seconds=(sec)
  	if sec < 60
  		@seconds = sec
  	else
  		@seconds = (sec%60).floor
  		@minutes = (sec - (sec%60).floor)/60
  		if @minutes > 60
  			min = @minutes
  			@minutes = (@minutes%60).floor
  			@hours = (min - (min%60).floor)/60
  		end

  	end
  end

  def minutes=(min)
  	@minutes = min
  end

  def hours=(h)
  	@hours = h
  end 

  def expand_time_string (time)
  	if time<10
  		string = "0" + time.to_s
  	else
  		string= time.to_s
  	end
  end

  def time_string
  	string_seconds = expand_time_string(@seconds)
  	string_minutes = expand_time_string(@minutes)
  	string_hours = expand_time_string(@hours)
  	string = "#{string_hours}:#{string_minutes}:#{string_seconds}"
  end

end
