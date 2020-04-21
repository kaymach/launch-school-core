require "time"

SECONDS_DAY = 86400

def friday_13th(integer)
  date = Time.new(integer)
  counter = 0
  
  until date.year == integer + 1
    counter += 1 if date.day == 13 && date.friday? 
    date += SECONDS_DAY
  end
  counter
end


p friday_13th(2015)# == 3
p friday_13th(1986)# == 1
p friday_13th(2019)# == 2
