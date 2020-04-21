# number % 7 && number.odd? && number.digits.uniq! or any? count == 2
# return next featured number
# uniq! being nil means that there are no duplicates AKA numbers occur only once

def featured(integer)
  return "There is no possible number that fulfills those requirements" if 
  integer >= 9_876_543_210
  integer += 1
  until integer % 7 == 0 && integer.odd? && integer.digits.uniq! == nil
    integer += 1
  end
  integer
end

puts featured(12)# == 21
puts featured(20)# == 21
puts featured(21)# == 35
puts featured(997)# == 1029
puts featured(1029)# == 1043
puts featured(999_999)# == 1_023_547
puts featured(999_999_987)# == 1_023_456_987

puts featured(9_999_999_999)
