class TimeAgo
    def initialize
      @now = Time.now
    end
  
    def time_ago
      time = ""
      if @now.sec === 0
        time = "just now"
      elsif @now.sec < 60
        time = @now.sec.to_s + " s ago"
      elsif @now.min === 0
        time = @now.hour.to_s + " h ago"
      elsif @now.min < 60
        time = @now.min.to_s + " m ago"
      elsif @now.hour === 0
        time = "today at " + @now.hour.to_s + ":" + @now.min.to_s
      elsif @now.hour < 24
        time = @now.hour.to_s + " hrs ago"
      elsif @now.day === 0
        time = "yesterday at " + @now.hour.to_s + ":" + @now.min.to_s
      elsif @now.day === 1
        time = "Monday at " + @now.hour.to_s + ":" + @now.min.to_s
      elsif @now.day === 2
        time = "Tuesday at " + @now.hour.to_s + ":" + @now.min.to_s
      elsif @now.day === 3
        time = "Wednesday at " + @now.hour.to_s + ":" + @now.min.to_s
      elsif @now.day === 4
        time = "Thursday at " + @now.hour.to_s + ":" + @now.min.to_s
      elsif @now.day === 5
        time = "Friday at " + @now.hour.to_s + ":" + @now.min.to_s
      elsif @now.day === 6
        time = "Saturday at " + @now.hour.to_s + ":" + @now.min.to_s
      elsif @now.day === 7
        time = "Sunday at " + @now.hour.to_s + ":" + @now.min.to_s
      else
        time = "on " + @now.strftime("%A") + " at " + @now.hour.to_s + ":" + @now.min.to_s
      end
  
      puts "#{time}"
    end
  end
  
  # created = TimeAgo.new
  # created.time_ago
