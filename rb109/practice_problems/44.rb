# Write a method that takes a string, and returns a boolean indicating whether 
# this string has a balanced set of parenthesis.

def balancer(string)
  result = ""

  string.chars.each do |char|
    result += char if char == "(" || char == ")"
    result.delete!("()") if result.include?("()")
  end
  result.empty?
end



p balancer("hi") # => true
p balancer("(hi") # => false
p balancer("(hi)") # => true

#Bonus:

p balancer(")hi(") # => false
