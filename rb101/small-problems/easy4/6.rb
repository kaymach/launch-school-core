def running_total(array)
  default_array = Array.new(array)
  builder_array = []
  final_array = []
  until builder_array.count == array.count
    builder_array << default_array.shift
    final_array << builder_array.reduce(:+)
  end
  final_array
end


p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])
