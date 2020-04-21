def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

puts fibonacci_last(15)
puts fibonacci_last(20)
puts fibonacci_last(100)
puts fibonacci_last(100_001)
puts fibonacci_last(1_000_007)
puts fibonacci_last(123456789)
