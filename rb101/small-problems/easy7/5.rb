def staggered_case(string)
  staggered = ""
  string.chars.each_with_index do |letter, index|
    if index.even?
      staggered += letter.upcase
    else
      staggered += letter.downcase
    end
  end
  staggered
end

puts staggered_case('I Love Launch School!')
puts staggered_case('ALL_CAPS')
puts staggered_case('ignore 77 the 444 numbers')
