def swapcase(string)
  swapcase = string.chars.map do |letter|
    if letter.match?(/[a-z]/)
      letter.upcase
    else
      letter.downcase
    end
  end
  swapcase.join
end


puts swapcase('CamelCase')
puts swapcase('Tonight on XYZ-TV')
