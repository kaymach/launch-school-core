def digit_list(number)
  number.to_s.split("").map {|num| num.to_i}
end

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]

#alternative

#def digit_list(number)
#  number.digits.reverse
#end

# The documentation for #digit is confusing in it's wording 
# or this would have been my first solution. I wouln't call it
# "least significant digit". Instead, "last digit in sequence", for example.