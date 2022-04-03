# Time Ago Gem

Localized relative date/time formatting (both for past and future dates) in Ruby/Rails.

Automatically chooses the right units (seconds, minutes, etc) to format a time interval.

# Examples:
 * just now
 * 45 seconds ago
 * 5m seconds ago
 * 15 minutes ago
 * 3 hours ago
 * 2 months ago
 * 5 years ago
 * etc

# Installation

Add this line to your application's Gemfile:


```Gemfile
gem 'a_moment_ago'
```

# Usage 
```ruby

# app/controllers/appointments/appointments_ago.rb

require "time_ago"

class Appointments::AppointmentsAgo
    # function defination for example
    def appointment
        @appointment_last_visited = TimeAgo.new
    end
end


# app/controllers/appointments_controller.rb

class AppointmentsController < Appointments::AppointmentsAgo
    def exact_time
        @appointment_time = 
        render json: { "appointment_time": @appointment_time.time_ago }, status: :ok
    end
end
```

## Contributing
1. Fork the repo ( https://github.com/[my-github-username]/time_ago/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request 

# Author 
[Webster Avosa](https://github.com/avosa)


