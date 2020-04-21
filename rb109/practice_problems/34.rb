def fizzbuzz(start_num, end_num)
  result = []

  start_num.upto(end_num) do |num|
    if num % 3 == 0 && num % 5 == 0
      result << "FizzBuzz"
    elsif num % 3 == 0
      result << "Fizz"
    elsif num % 5 == 0
      result << "Buzz"
    else
      result << num
    end
  end
  result.join(", ")
end

puts fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz


# def fizzbuzz(start_num, end_num)
#   start_num.upto(end_num) do |num|
#     if num % 3 == 0 && num % 5 == 0
#       print "FizzBuzz", " "
#     elsif num % 3 == 0
#       print "Fizz", " "
#     elsif num % 5 == 0
#       print "Buzz", " "
#     else
#       print num, " "
#     end
#   end
# end
