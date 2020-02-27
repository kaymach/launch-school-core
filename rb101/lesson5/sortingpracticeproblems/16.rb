LETTERS = ("a".."z").to_a + ("0".."9").to_a

def uuid
hex = ""

  8.times {|number| hex += LETTERS.sample}
  hex += "-"
  4.times {|number| hex += LETTERS.sample}
  hex += "-"
  4.times {|number| hex += LETTERS.sample}
  hex += "-"
  4.times {|number| hex += LETTERS.sample}
  hex += "-"
  12.times {|number| hex += LETTERS.sample}

  puts hex
end

uuid
