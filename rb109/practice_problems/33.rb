# all elements in BLOCK array can only be used once

# upcase the string and iterate through chars of that string
# 
# used << BLOCK.find {|blocks| blocks.include?(letter)}  this returns the block so i can push it to used
# 

BLOCK = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(string)
  used = []

  string.upcase.chars do |letter|
    used << BLOCK.find {|blocks| blocks.include?(letter)}
  end

  used.uniq! == nil
end

p block_word?('BATCH')# == true
p block_word?('BUTCH')# == false
p block_word?('jest')# == true
