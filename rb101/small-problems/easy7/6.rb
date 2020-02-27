def staggered_case(string)
  staggered = ""
  need_upper = true
  string.chars.each_with_index do |letter, index|
    if need_upper
      staggered += letter.upcase
    else
      staggered += letter.downcase
    end
    next if letter.match?(/[^a-zA-Z]/)
    need_upper = !need_upper
  end
  staggered
end

puts staggered_case('I Love Launch School!')
puts staggered_case('ALL CAPS')
puts staggered_case('ignore 77 the 444 numbers')
