def real_palindrome?(string)
  string.downcase.gsub(/\W+/, '') == string.downcase.gsub(/\W+/, '').reverse
end

puts real_palindrome?('madam')
puts real_palindrome?('Madam')
puts real_palindrome?("Madam, I'm Adam")
puts real_palindrome?('356653')
puts real_palindrome?('356a653')
puts real_palindrome?('123ab321')
