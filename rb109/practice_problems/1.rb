# easy7 staggered caps part 1

# iteration
# new string
# alternate between upper and lowercase
# anything that isn't a letter remains the same element but are still counted

# algorithm:
# convert string sentence into individual characters using chars method
# iterate through the elements based on index with .map.with_index based on even indexes
# if statement on matching characters that are not letters and skip that iteration with next
# else statement on the even indexes and doing a upcase method

# TEST MORE OFTEN
# PSEUDOCODE BETTER. WITH ALGORITHM.

def staggered_case(string)
  result = string.chars.map.with_index do |element, index|
    if element.match?(/[^a-zA-Z]/)
      element
    elsif index.even?
      element.upcase
    elsif element == element.upcase
      element.downcase
    else
      element
    end
  end
  result.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'


