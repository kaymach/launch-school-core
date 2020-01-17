def xor?(first, second)
  (first && !second) || (second && !first)
end

puts xor?(5.even?, 4.even?)
puts xor?(5.odd?, 4.odd?)
puts xor?(5.odd?, 4.even?)
puts xor?(5.even?, 4.odd?)

# There is not short circuit evaluation with xor because you need
# to check if exactly one is truthy. So both need to be checked.
