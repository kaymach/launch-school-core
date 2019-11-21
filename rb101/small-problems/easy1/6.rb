def reverse_words(string)
  string = string.chars
  sentenceformer = ""

  if string.include?(" ")
    string.join.split.each do |word|
      if word.length >= 5
       sentenceformer += word.reverse + " "
      else
       sentenceformer += word + " "
      end
    end
sentenceformer

  elsif string.count >= 5
    string.reverse.join
  else
    string.join
  end
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')
puts reverse_words('Word')