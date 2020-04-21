def fibonacci(number)
  return 1 if number < 3

  fibonacci(number - 1) + fibonacci(number - 2)
end

puts fibonacci(1)
puts fibonacci(2)
puts fibonacci(3)
puts fibonacci(4)
puts fibonacci(5)
puts fibonacci(12)
puts fibonacci(20)
