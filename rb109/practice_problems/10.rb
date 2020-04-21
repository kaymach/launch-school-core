# codewars https://www.codewars.com/kata/5ae326342f8cbc72220000d2/train/ruby

# use * operator to stretch the string out
# use map on string as array using chars
# if element in the temp array is a number, multiply current element by that number

#require "pry"

def string_expansion(s)
  result = []
  temp_string = ""
  s.chars.each.with_index do |element, index|
    #binding.pry
    if element.match?(/[0-9]/)
      temp_array << element
    elsif !(temp_array.empty?)
      result << element * temp_array[-1].to_i
    else
      result << element
    end
  end
  result.join
end

p string_expansion('3d332f2a')# == 'dddffaa'
p string_expansion('abcde')# == 'abcde'
p string_expansion('0d0a0v0t0y')
p string_expansion('3abc') # "aaabbbccc"


#element.match?(/[a-zA-Z]/)
