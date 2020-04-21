def sum_square_difference(integer)
  array = (1..integer).to_a
  array.reduce(:+)**2 - array.reduce {|accum, num| accum + num**2}
end


p sum_square_difference(3)# == 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10)# == 2640
p sum_square_difference(1)# == 0
p sum_square_difference(100)# == 25164150
