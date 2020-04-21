# most common char in a string

def highest_count(string)
  #string.chars.uniq.map do |char|       # this does it but won't give the character that occurs most often
  #  string.count(char)
  #end.sort.reverse.first

  aaa = string.chars.max_by { |element| string.count(element) }    # this gives both the character and the count
  puts "The count is #{string.count(aaa)} and the char is #{aaa}"

end

puts highest_count("aaaabbcccccccc")


# can also put the elements and count them in a hash as it iterates through each char of the string


