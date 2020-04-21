def rotate_array(array)
  new_array = array.dup
  new_array << new_array.shift
  new_array
end

def rotate_rightmost_digits(integer, rotations)
  int_array = integer.digits.reverse
  return integer if rotations == 1
  first_integers = int_array.first( (int_array.size) - rotations )
  (first_integers + rotate_array( int_array.last(rotations) )).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
