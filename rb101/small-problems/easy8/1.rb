def sum_of_sums(array)
  arraysum = []

  array.each_with_index do |number, index|
    iterator = index

    until iterator < 0
      arraysum << array[iterator]
      iterator -= 1
    end
  end
  arraysum.sum
end

puts sum_of_sums([3, 5, 2])
puts sum_of_sums([1, 5, 7, 3])
puts sum_of_sums([4])
puts sum_of_sums([1, 2, 3, 4, 5])
