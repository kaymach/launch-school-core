arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr_sorted = arr.sort_by do |array|
  array.each do |number|
    array.include?(number.odd?)
  end
end

p arr_sorted.reverse

# OR

arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end
