# need to break up a sentence into individual words (array)
# signify the beginning/end sequence of a sentence starting after period, exclamation point, or question mark
# do a size method on that to get the variable for number of words (print later)
# print longest sentence based on number of words
# print that word cout now

story1 = File.read("1rb_textfile.txt")
story2 = File.read("1rb_2_textfile.txt")

def story_loader(text)
  sentences = text.split(/[\.\?\!]/).map { |sentence| sentence.split }

  selection = sentences.sort_by{ |sentence| sentence.size }.reverse[0]
  
  puts "The longest sentence is: #{selection.join(" ")}. \n\nIt is #{selection.size} words long.\n\n"
end

story_loader(story1)
story_loader(story2)
