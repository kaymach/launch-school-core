arr = ['10', '11', '9', '7', '8']

p (arr.sort_by {|num| num.to_i }).reverse arr.sort

# or

p arr.sort {|a, b| b.to_i <=> a.to_i}
