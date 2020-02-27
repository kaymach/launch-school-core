def substrings_at_start(string)
  string_array = string.chars
  array_final = []

  1.upto(string.size) do |count|
    array_final << string_array.slice(0, count).join
  end
  array_final
end

def substrings(string)
  result = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    result.concat(substrings_at_start(this_substring))
  end
  result
end

def palindromes(string)
  result = []

  substrings(string).each {|word| result << word if 
    word == word.reverse && word.length > 1}
  
  result
end

p palindromes('abcd')
p palindromes('madam')
p palindromes('hello-madam-did-madam-goodbye')
p palindromes('knitting cassettes')
