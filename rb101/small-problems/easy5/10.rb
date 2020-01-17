def print_in_box(string)
  length = string.length
  puts "+" + "-"*(length + 2) + "+"
  puts "|" + " "*(length + 2) + "|"
  puts "|" + " " + string + " " + "|"
  puts "|" + " "*(length + 2) + "|"
  puts "+" + "-"*(length + 2) + "+"
end


puts print_in_box('To boldly go where no one has gone before.')
puts print_in_box('')
