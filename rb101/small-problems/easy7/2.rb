def letter_case_count(string)
  hash = {lowercase: 0, uppercase: 0, neither: 0}

  string.chars.each do |char|
    if char.match?(/[a-z]/)
      hash[:lowercase] += 1
    elsif char.match?(/[A-Z]/)
      hash[:uppercase] += 1
    else
      hash[:neither] += 1
    end
  end
  hash
end


puts letter_case_count('abCdef 123')
puts letter_case_count('AbCd +Ef')
puts letter_case_count('123')
puts letter_case_count('')
