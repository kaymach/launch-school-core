# ask for loan amount
# ask for APR in float
# ask for loan duration

# calculate monthly interest rate (APR / 12)
# calculate loan duration in months

def mnthly_interest(yearlyint)
  (yearlyint.to_f / 12) / 100
end

def integer?(input)
  input.to_i.to_s == input && !(input.include?(","))
end

puts "~~Car Loan Calculator~~"

puts "How much money do you want to borrow?"
loanamt = ""
loop do
  loanamt = gets.chomp

  if integer?(loanamt)
    break
  else
    puts "Please use numerical format without any special characters."
  end
end

puts "What's the APR?"
apr = gets.chomp
mnthlyint = mnthly_interest(apr)

puts "How many months do you need the loan for?"
loandur = gets.chomp

puts "Calculating monthly payment..."

mnthlypmt = loanamt.to_i * (mnthlyint / (1 - (1 + mnthlyint)**(-loandur.to_i)))

puts "Your monthly payment is $#{mnthlypmt.round(2)}"

puts "Thank you for using Car Loan Calculator!"
