def letter_percentages(string)
  hash = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    case
    when char.match?(/[a-z]/) then hash[:lowercase] += 1
    when char.match?(/[A-Z]/) then hash[:uppercase] += 1
    else hash[:neither] += 1
    end
  end
  
  total = hash.values.sum
  hash.transform_values! { |v| (v * 100.0 / total).round(2) }
  hash.transform_values! do |v|
    if v.to_s[-1] == "0"
      v.to_i
    else
      v
    end
  end
end


p letter_percentages('abCdef 123')# == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef')# == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123')# == { lowercase: 0, uppercase: 0, neither: 100 }
