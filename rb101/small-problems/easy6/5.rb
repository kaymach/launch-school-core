# def reverse!(array)
#   array_reversed = []
#   base = 0
# 
#   until array.empty?
#     array_reversed << array.pop
#     base += 1
#   end
# 
#   array_reversed
# end

# nevermind, that modifies original array.

def reverse!(array)
  array.reduce([], :unshift)
end

p reverse!([1, 2, 3, 4])
p reverse!(%w(a b e d c))
p reverse!(['abc'])
p reverse!([])
