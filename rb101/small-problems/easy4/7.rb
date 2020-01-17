def string_to_integer(numberstring)
  numberstring.bytes.reduce(0) { | total, ascii | (total * 10) + (ascii - 48) }
end

puts string_to_integer('4321')
puts string_to_integer('570')
