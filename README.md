# Time Ago Gem

Localized relative date/time formatting (both for past and future dates) in Ruby/Rails.

Automatically chooses the right units (seconds, minutes, etc) to format a time interval.

# Examples:
 * just now
 * 45 s ago
 * 15 m ago
 * 3 h ago
 * Yesterday at 2pm
 * Monday at 7am
 * etc

# Installation

Add this line to your application's Gemfile:


```ruby
gem 'a_moment_ago'
```

Then execute:

```ruby
bundle install
```


Or install it yourself

```ruby
gem install a_moment_ago
```

# Usage 

### 1. Ruby / PORO
```ruby
### created_at.rb
require 'time_ago'

class CreatedAtTime
    def time_of_creation
        @created = TimeAgo.new.time_ago
    end
end

created_time = CreatedAtTime.new
created_time.time_of_creation
```

### 2. Rails
```ruby
# app/controllers/appointments/appointments_ago.rb

require "time_ago"

class Appointments::AppointmentsAgo
    # function defination for example
    def appontment_time
        @appointment_last_visited = TimeAgo.new.time_ago
    end
end


# app/controllers/appointments_controller.rb

class AppointmentsController < ApplicationController
    def create
        @appointment_time = Appointments::AppointmentsAgo.new.appontment_time
        render json: { "appointment_time": @appointment_time }, status: :ok
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


