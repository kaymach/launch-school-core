# def reverse!(array)
#   array.each_with_index do |element, index|
#     array.push(array[0])
#     array.shift
#     p array
#   end
#   array
# end

# could just build a duplicate array by popping iterating and then just do a mapping mutation
# where you iterate through the original array and assign the element just like the dup array

# def reverse!(array)
# base = 0
#   until base == array.count
#     array.push(array.last)
#     array.shift
#     p array
#     base += 1
#   end
#   array
# end

def reverse!(array)
  array_dup = []
  array.each{ |element| array_dup << element }

  array.reverse_each do |element|
    array.push(element)
  end

  until array_dup.count == array.count
    array.shift
  end

  array
end

p reverse!([1, 2, 3, 4])
p reverse!(%w(a b e d c))
p reverse!(['abc'])
p reverse!([])
