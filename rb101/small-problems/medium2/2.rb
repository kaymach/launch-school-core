# cannot use both letters in each block. can only use each block one time

# select through the string and if it matches something from the spelling blocks && is not from the same block
# it's true
# we have to store if it's from the same block from earlier though. temp block_used array that stores
# blocks that are used. we'll use that after the && condition with a bang !. use match or include [0] and [1]
# compare string that comes out at the end and see if it matches original string

# ^ way too complicated nvm.

SPELLING_BLOCKS = [ 
["B", "O"], ["X", "K"], ["D", "Q"], ["C", "P"], ["N", "A"],
["G", "T"], ["R", "E"], ["F", "S"], ["J", "W"], ["H", "U"],
["V", "I"], ["L", "Y"], ["Z", "M"] 
]

def block_word?(string)
  upcase_string = string.upcase
  block_used = []
  
  upcase_string.chars.each do |letter|
    block_used << SPELLING_BLOCKS.select { |array| array.include?(letter) }
  end
  return true if block_used.uniq! == nil  # if there are no duplicates, uniq! returns nil
  false
end

p block_word?('BATCH')# == true
p block_word?('BUTCH')# == false
p block_word?('jest')# == true


# graveyard

# def block_word?(string)
#   block_used = nil

#   SPELLING_BLOCKS.select do |block|
#     block.map(&:downcase).include?(string.downcase)
#   end
# end

# def block_word?(string)
#   block_used = []
  
#   string.chars.map(&:downcase).select do |letter|

#     SPELLING_BLOCKS.map { |array| array.map(&:downcase) }.any? {|array| array.include?("b")} &&
#     !(SPELLING_BLOCKS.map { |array| array.map(&:downcase) }.select {|array| array.include?(letter.downcase)})
  
#   end
# end
