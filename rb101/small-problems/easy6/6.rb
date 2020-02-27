# Original answer

# def merge(array_1, array_2)
#   array_1 | array_2
# end

#Further exploration

def merge(array1, array2)
  array2.each{|element| array1 << element}
  array1.uniq
end

p merge([1, 3, 5], [3, 6, 9])
