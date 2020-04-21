def accum(string)
  result = []
  
  string.chars.each.with_index(1) do |char, index|
    result << ( char * index ).capitalize
    result << "-"
  end
  result[0..-2].join
end

p accum("abcd")    # "A-Bb-Ccc-Dddd"
p accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
p accum("cwAt")    # "C-Ww-Aaa-Tttt"
