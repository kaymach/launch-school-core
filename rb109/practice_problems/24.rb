# create new local variable equal to the initial fibonacci numbers [1,1]
# use recursion by setting the intial fibonacci number variable equal to the last 2 in the array
# added to eachother
# stop iterating when the last fibonacci number size is equal to integer

def find_fibonacci_index_by_length(integer)
  fibonacci = [1, 1]

  until fibonacci.last.digits.size == integer
    fibonacci << fibonacci[-1] + fibonacci[-2]
  end

  fibonacci.index(fibonacci.last) + 1
end

p find_fibonacci_index_by_length(2)# == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3)# == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10)# == 45
p find_fibonacci_index_by_length(100)# == 476
p find_fibonacci_index_by_length(1000)# == 4782
p find_fibonacci_index_by_length(10000)# == 47847
