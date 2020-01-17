# 00:00 is midnight
# 00:00 - 11:59 is morning
# 12:00 - 24:59 is afternoon/night
# 
# 1400(24:00) - 800(number) = 600(minutes before midnight)
# 720(12:00) + 600(minutes before midnight) = 1320(finaltime)
# 
# if number is over 1400, need to convert it


# def time_of_day(number)
#   minutes_before_midnight = 1400 - number
#   final_time = 720 + minutes_before_midnight
#   final_time.to_s.insert(2, ":")
# end

# none of the above really ended up working. too much time spent on this.

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

puts time_of_day(0)
puts time_of_day(-3)
puts time_of_day(35)
puts time_of_day(-1437)
puts time_of_day(3000)
puts time_of_day(800)
puts time_of_day(-4231)
