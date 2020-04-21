# code wars https://www.codewars.com/kata/5970df092ef474680a0000c9

def alphabetized(s)
  result = s.chars.sort {|a, b| a.downcase <=> b.downcase}.join
  result.gsub(/[^a-zA-Z]/, "")
end

p alphabetized("")
p alphabetized("abc")
p alphabetized("The Holy Bible")
