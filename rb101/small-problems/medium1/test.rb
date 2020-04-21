def yes_no(arr)
  counter = 0
  new_array = []
  newnew_array = []
  arr.map.with_index do |element, index|
    if index.even?
      new_array << element
    elsif index.odd?
    newnew_array << element
    end
  end

  newnewnew_array = []
  newnewnewnew_array = []
  newnew_array.map.with_index do |element, index|
    if index.even?
      newnewnew_array << element
    elsif index.odd?
    (newnewnewnew_array << element)
    end
  end
  new_array + newnewnew_array + newnewnewnew_array.reverse
end


# index 0 1 2 3
# 2, 6, 10, 8, 4]
# do something differently


p yes_no([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
p yes_no(['this', 'code', 'is', 'right', 'the'])
