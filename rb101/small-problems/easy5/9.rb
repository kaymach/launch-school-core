# def crunch(string)
#   new_string = string.split.map { |word| word.chars.uniq.join }.join(" ")
# end
# did not work for the 2nd string test

def crunch(string)
  array = []
  string.chars.each {|char| array << char unless array.last == char}
  array.join
end


puts crunch('ddaaiillyy ddoouubbllee')
puts crunch('4444abcabccba')
puts crunch('ggggggggggggggg')
puts crunch('a')
puts crunch('')
