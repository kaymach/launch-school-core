def reverse!(array)
  array_copy = array.dup
  reversed_array = []
  reversed_array << array_copy.pop until array_copy.empty?
  array.each_with_index { |_, index| array[index] = reversed_array[index] } #INDEX IS THE KEY FOR REVERSING WITHOUT METHOD
end

# OR

def my_reverse(arr)
  copy = arr.dup
  arr.each_with_index do |_, i|
    arr[i] = copy[-i-1]
  end
end

p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id
 
p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

p list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]
 
p list = []
p reverse!(list) == []
p list == []
