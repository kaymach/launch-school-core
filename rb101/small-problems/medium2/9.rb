def bubble_sort!(array)
  loop do
    iterator = 0
    index = 0
    swapped = 0
    until iterator == array.size - 1
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        swapped += 1
      end
      iterator += 1
      index += 1
    end
    if swapped == 0
      return array
    end
  end
end

p array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

p array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)


#graveyard
  #temp = []
#
  #if array[0] > array[1]
  #  temp = []
  #  temp << array[0] #6
  #  array[0] = array[1]
  #  array[1] = temp
  #end
# this is terrible ^
