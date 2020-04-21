# new string

# set a variable equal to true. when iteration goes through char of string, it'll flip that variable
# to true and false each iteration
# then upcase the character
# if character is anything except the alphabet, just flip the boolean
# join at end

def staggered_case(string)
  switch = true
  result = []

  string.chars.each do |char|
    result << char.upcase if switch
    result << char.downcase if switch == false
    switch = !switch
  end
  result.join
end

p staggered_case('I Love Launch School!')# == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS')# == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers')# == 'IgNoRe 77 ThE 444 NuMbErS'
