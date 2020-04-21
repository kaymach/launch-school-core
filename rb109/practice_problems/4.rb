# easy 9 double doubles

# input: integer
# output: integer

# double number means left side digits == right side digits
# get a half way point to compare left side and the right side

# algorithm:
# halfway = convert integer into string and do a size method on it and divide integer by 2 if it's even 
# and set that as the end index. beginning index will be [0]
# if its odd, divide integer by 2 + 1. beginning index will be this result. end index will be [-1]
# if integer is not a double number, multiply by 2
# else return double number


def twice(integer)
  end_digit = nil
  begin_index = nil

  if integer.size.even?
    end_digit = (integer.to_s.size / 2)
    left_side = integer.to_s[0..end_digit]
    right_side = integer.to_s.size

  elsif integer.size.odd?
    begin_index = (integer.to_s.size / 2 + 1)
    p begin_index
  else
    integer * 2
  end
end

#what the hell did i write? ^^^^^^^^^^^^^^^^^^^^^^

#p twice(37)# == 74
#p twice(44)# == 44
#p twice(334433)# == 668866
#p twice(444)# == 888
#p twice(107)# == 214
p twice(103103)# == 103103
#p twice(3333)# == 3333
#p twice(7676)# == 7676
#p twice(123_456_789_123_456_789)# == 123_456_789_123_456_789
#p twice(5)# == 10
