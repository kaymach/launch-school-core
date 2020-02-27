def multiply_all_pairs(array1, array2)
  array3 = []
  array1.each do |number|
    iterator = 0
    until iterator == array2.count
    array3 << number * array2[iterator]
    iterator += 1
    end
  end
  array3.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])
