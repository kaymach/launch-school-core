def substring_test(string1, string2)
  return false if string1.empty? || string2.empty?
  substring_array = []
  
  iterator = 1
  mini_iterator = 0
  
  until iterator == string1.size
    substring_array << string1.slice(mini_iterator..iterator)
    mini_iterator += 1
    iterator += 1
  end
  
  result = substring_array.select do |words|
    string2.downcase.include?(words.downcase)
  end

  return false if result.empty?
  true
end

#["So", "om", "me", "et", "th", "hi", "in", "ng"]
#"Home"

p substring_test('Something', 'Fun')# ==  false
p substring_test('Something', 'Home')# == true
p substring_test('Something', 'Fun')# == false
p substring_test('Something', '')# == false
p substring_test('', 'Something')# == false
p substring_test('BANANA', 'banana')# == true #case insenstive
p substring_test('test', 'lllt')# == false
p substring_test('', '')# == false
p substring_test('1234567', '541265')# == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou')# == true
