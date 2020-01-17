def string_to_signed_integer(numberstring)
  bytes_array = numberstring.bytes
  
  if numberstring.include?("-")
    bytes_array.shift
    -bytes_array.reduce(0) { | total, ascii | (total * 10) + (ascii - 48) }
 
  elsif numberstring.include?("+")
    bytes_array.shift
    bytes_array.reduce(0) { | total, ascii | (total * 10) + (ascii - 48) }
  
  else
    numberstring.bytes.reduce(0) { | total, ascii | (total * 10) + (ascii - 48) }
  end
end

puts string_to_signed_integer('4321')
puts string_to_signed_integer('-570')
puts string_to_signed_integer('+100')
