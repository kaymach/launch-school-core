def find_fibonacci_index_by_length(digitlength)
  final_array = [1, 1]
  until final_array.last.digits.count == digitlength
    final_array << final_array.last(2).reduce(:+)
  end
  final_array.count
end

p find_fibonacci_index_by_length(2)
p find_fibonacci_index_by_length(3)
p find_fibonacci_index_by_length(10)
p find_fibonacci_index_by_length(100)
p find_fibonacci_index_by_length(1000)
p find_fibonacci_index_by_length(10000)
