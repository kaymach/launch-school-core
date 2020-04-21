def substring(string, num1, num2=nil)
  return string[num1] if num2 == nil
  string[num1..num2]
end

# p substring("honey", 0, 2) # => "hon"
# p substring("honey", 1, 2) # => "on"
# p substring("honey", 3, 9) # => "ey"
# p substring("honey", 2)    # => "n"


def substrings(string)
  beg_index = 0
  end_index = 1
  result = []
  loop do
    until end_index == string.size
      result << substring(string, beg_index, end_index)
      end_index += 1
    end
    
    beg_index += 1
    end_index -= string.size - 2     # 3 if size of word is 5.....   2 if size of word is 4
    break if beg_index == string.size - 1
  end
  result_dup = result.dup
  result_dup.each { |word| result.delete(word) if word.size == 1 || word == "" }
  result
end

def substrings2(string)
  result = []

  string.chars.each_with_index do |_, index|
    position = index + 1

    (string.size - position).times do |n|
      result << substring(string, index, index + n + 1)
    end
  end
  result
end

# p substrings("band") # => ['ba', 'ban', 'band', 'an', 'and', 'nd']
# p substrings("world") #=> ['wo', 'wor', 'worl', 'world', 'or', 'orl', 'orld', 'rl', 'rld', 'ld']
# p substrings("ppop") # => ['pp', 'ppo', 'ppop', 'po', 'pop', 'op']
# p substrings("butterfly")

# p substrings2("band")

def palindromes(string)
  substrings2(string).select {|sub| sub == sub.reverse}
end

# p palindromes("ppop") # => ["pp", "pop"]

def largest_palindrome(string)
  palindromes(string).max_by {|sub| sub.size}
end

p largest_palindrome("ppop") # => "pop"
