NUMBERS = %w(zero one two three four five six seven eight nine ten)
OPERATORS = %w(plus minus times divided)

def mathphrase(length)
  result = NUMBERS.sample + " "
  length.times do
    number = NUMBERS.sample
    operator = OPERATORS.sample
    operator += " by" if operator == "divided"
    result += operator + " "
    result += number + " "
  end
  result.strip
end

10.times do 
  length = (1..20).to_a.sample
  p mathphrase(length)
end
