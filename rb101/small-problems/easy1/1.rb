def repeat(string, number)
  number.times do
    puts string
  end
end

repeat("Hello", 3)

# Attemping the PEDAC process ended up psyching myself out and 
# made me question whether
# I even understood how to do this problem, somehow.
# This would normally take me about a minute to solve, yet it took me
# almost 30 minutes trying to use PEDAC. Even the solution shows
# an easy non pedac approach - solving it in code increments.

# understand:
# write method that takes 2 arguments. a string and a number.
# print the string as many times as the number indicates

# examples:
# repeat("Hello", 3)
# repeat("Goodbye", 5)

# data structure:
# integer

# algorithm:
# method will have string,number as parameters
# use times method on number and invoke block to puts string