flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hash = Hash.new
flintstones.each_with_index do |word, index|
  hash[word] = index
end

puts hash
