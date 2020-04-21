def balanced?(string)
  array = []
  
  string.chars.each_with_index do |char, index|
      array << char if char == "(" || char == ")"
      
    if array.join.include?("()")
      array = array.join.gsub("()", "").chars
    end
  end
  return true if array.empty?
  false
end

p balanced?('What (is) this?')# == true
p balanced?('What is) this?')# == false
p balanced?('What (is this?')# == false
p balanced?('((What) (is this))?')# == true
p balanced?('((What)) (is this))?')# == false
p balanced?('Hey!')# == true
p balanced?(')Hey!(')# == false
p balanced?('What ((is))) up(')# == false
