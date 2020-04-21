# Write a method that takes two numbers. It should print out all primes between
# the two numbers. Don't use Ruby's "prime" class.

def prime?(num)
  (1..num).select {|i| num % i == 0}.size == 2
end

# def find_primes(num1, num2)
#   (num1..num2).select { |num| prime?(num) }.join(", ")
# end

# puts find_primes(3, 10)# => 3, 5, 7
# puts find_primes(5, 20)
# puts find_primes(1, 2)

def find_primes(array)
  array.select { |num| prime?(num) }
end

p find_primes([1, 2, 3, 4])
p find_primes([4, 6, 8, 10])


# prime is a number that can only be divided by itself and 1
