#input: integer
#output: integer
#algorithm: 
# divide both sides of the integer in half based on whether the integer size is odd or even
# if odd
# return integer as is
# if even
# integer.digits.size / 2 - 1 is going to be the end index for the slice method [0..end_num]
# integer.digits.size / 2 is going to be the beginning index for the slice method [beg_num..-1]
# test to see if both sides are equal to eachother
# if they're equal return integer as is
# if not, double the integer

def double_double?(integer)
  integer.digits.reverse[ 0..(integer.digits.size / 2) - 1 ] == 
  integer.digits.reverse[ (integer.digits.size / 2)..-1 ]
end

def twice(integer)
  return integer * 2 if integer.digits.size.odd?
  if double_double?(integer)
    integer
  else
    integer * 2
  end
end


p twice(37)# == 74
p twice(44)# == 44
p twice(334433)# == 668866
p twice(444)# == 888
p twice(107)# == 214
p twice(103103)# == 103103
p twice(3333)# == 3333
p twice(7676)# == 7676
p twice(123_456_789_123_456_789)# == 123_456_789_123_456_789
p twice(5)# == 10
