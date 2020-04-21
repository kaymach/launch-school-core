# Write a method that takes in a number and returns a string, placing
# a dash in between odd digits.


#input: integer
#output: numeric string

# whenever 2 odd digits are next to eachother (index wise), place dash in between

# integer.to_s to convert into string
# initialize empty array variable
# iterate through string
# if array.last && current element are odd?
# put dash first then add current element


def dasherizer(integer)
  integer_string = integer.to_s
  result = ""
  
  integer_string.chars.each do |element|
    if result[-1].to_i.odd? && element.to_i.odd?
      result << "-"
      result << element
    else
      result << element
    end
  end
  result
end

p dasherizer(2112) #== '21-12'
p dasherizer(201105742) #== '201-105-742'
p dasherizer(123456789) #== '123456789'
p dasherizer(21121) #== '21-121'
