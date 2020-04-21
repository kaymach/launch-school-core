#start at 1 add another star layer euntil it reaches parameter supplied then drops back down to 1

def diamond(integer)
  spacer = integer / 2
  
  # making the upper half of the diamond including middle
  1.upto(integer) do |num|
    next if num.even?
    puts (" " * spacer ) + ("*" * num)
    spacer -= 1
  end

  spacer = 1

  # making the lower half of the diamond excluding middle
  (integer - 1).downto(1) do |num|
    next if num.even?
    puts (" " * spacer ) + ("*" * num)
    spacer += 1
  end
end


diamond(9)

#    *
#   ***
#  *****
# *******
#*********

# *******
#  *****
#   ***
#    *


# graveyard

#def diamond(integer)
#  first_star_space = integer / 2
#  
#  1.upto(integer) do |num|
#    first_star_space.downto(0) do |num2|
#      if num.odd?
#        puts (" " * num2 ) + ("*" * num)
#      end
#    end
#  end
#
#  integer.downto(1) do |num|
#    if num.odd?
#      puts (" " * (integer / 2) ) + ("*" * num)
#    end
#  end
#
#end
