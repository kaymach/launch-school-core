# def substrings_at_start(string)
#   string_array = string.chars
#   string_final = []
# 
#   string_array.each_with_index do |letter, index|
#     iterator = index
# 
#     until iterator < 0
#       string_final << string_array[iterator]
#       iterator -= 1
#     end
#   end
#   string_final
# end

def substrings_at_start(string)
  string_array = string.chars
  array_final = []

  1.upto(string.size) do |count|
    array_final << string_array.slice(0, count).join
  end
  array_final
end



p substrings_at_start('abc')
p substrings_at_start('a')
p substrings_at_start('xyzzy')
