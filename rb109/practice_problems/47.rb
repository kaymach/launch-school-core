def word_cap(string)
  string.split.map { |word| word[0].upcase + word[1..-1] }.join(" ")
end


puts word_cap('four score and seven')# == 'Four Score And Seven'
puts word_cap('the javaScript language')# == 'The JavaScript Language'
puts word_cap('this is a "quoted" word')# == 'This Is A "quoted" Word'
