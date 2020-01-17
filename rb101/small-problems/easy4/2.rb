def century(year)
  century_number = (year - 1) / 100 + 1
  century_number.to_s + prefix(century_number)
end

def prefix(century)
  return "th" if century.to_s.include?("11") || 
                 century.to_s.include?("12") || 
                 century.to_s.include?("13")
  last_digit = century % 10
  case last_digit
  when 0, 4, 5, 6, 7, 8, 9
    "th"
  when 1
    "st"
  when 2
    "nd"
  when 3
    "rd"
  end
end

puts century(2000)
puts century(2001)
puts century(1965)
puts century(256)
puts century(5)
puts century(10103)
puts century(1052)
puts century(1127)
puts century(11201)
