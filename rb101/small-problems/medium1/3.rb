def rotate_array(array)
  new_array = array.dup
  new_array << new_array.shift
  new_array
end

def rotate_rightmost_digits(num, rotate)
  int_array = num.digits.reverse
  return num if rotate == 1
  first_nums = int_array.first( (int_array.size) - rotate )
  (first_nums + rotate_array( int_array.last(rotate) )).join.to_i
end

def max_rotation(num)
  rotate = num.digits.size
  until rotate == 1; num = rotate_rightmost_digits(num, rotate); rotate -= 1; end
  num
end

p max_rotation(735291)# == 321579
p max_rotation(3)# == 3
p max_rotation(35)# == 53
p max_rotation(105)# == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146)# == 7_321_609_845


# graveyard of attempts below

#def max_rotation(num)
#  new_array = []
#  rotate = num.digits.size

  #until rotate == 0
  #  new_result = rotate_rightmost_digits(num, rotate) # 352917
  #  bla = rotate_rightmost_digits(new_result, rotate)
  #  asd = rotate_rightmost_digits(bla, rotate)
  #  rotate_rightmost_digits(asd, rotate)
  #  rotate -= 1
  #end

  #new_result = rotate_rightmost_digits(num, rotate)
  #new_result = nil
  #new_result2 = nil
  #until rotate == 0
  #  new_result = rotate_rightmost_digits(num, rotate)
  #  binding.pry
  #  rotate -= 1
  #  new_result2 = rotate_rightmost_digits(new_result, rotate)
  #end

#def max_rotation(num)
#  rotate = num.digits.size
#
#  until rotate == 1
#    num = rotate_rightmost_digits(num, rotate)
#    rotate -= 1
#  end
#  num
#end

  #new_result.each do |element|
  #  new_result = []
  #  rotate_rightmost_digits(num, 6)
  
  
  #new_result
#end


#tomorrow, try freezing the numbers in a loop in a much easier way. when theres
# the first array of 352917 and you need to freeze, just do 
#array[0..0] or array.first(1) + rotate_rightmost_digits.last(5)
#array[0..1] or array.first(2) of the result of prior line + rotate_rightmost_digits.last(4)
#array[0..2] or array.first(3) of the result of prior line + rotate_rightmost_digits.last(3)


#735291
#
#352917
#first(1) last(5)
#329175
#first(2) last(4)
#321759
#first(3) last(3)

#def max_rotation(num)
#  binding.pry
#  int_array = num.digits.reverse
#  rotate = int_array.size
#  iterator = 1
#  new_array = []
#  keep_digit_max = int_array.size - 2
#  last_thing = int_array.size - 1
#
#  until rotate == 2
#    new_array << ( rotate_rightmost_digits(num, rotate) ).digits.reverse.first(iterator)
#    new_array << ( rotate_rightmost_digits(num, rotate) ).digits.reverse.last(last_thing)
#
#    iterator += 1
#    rotate -= 1
#    last_thing -= 1
#    binding.pry
#  end
#  new_array.flatten
#end
