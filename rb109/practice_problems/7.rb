#def revrot(str, sz)
#  if sz <= 0 || str.empty?
#  return ""
#  elsif sz > str.length
#  return ""
#  end
#  
#  str.chars.map.with_index do |number, index|
#    
#  end
#    #chunk.reduce(0) {|total, number| total += number**2} 
#end
#
#p revrot("1234", 0)
#p revrot("1234", 5)
#p revrot("123456987654", 6)

def revrot(str, sz)
  string_chars = str.chars
  iterator = 0
  chunk = ""
  until iterator == sz - 1
    chunk << string_chars.shift
    iterator += 1
  end
  chunk
end

p revrot("1234", 0)
p revrot("1234", 5)
p revrot("123456987654", 6)
