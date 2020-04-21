def not_prime?(num)
  return true if num == 1
  (2...num).any? { |n| num % n == 0 }
end

def odd_not_prime(num)
  (1..num).select { |n| n.odd? && not_prime(n) }.size
end

#p odd_not_prime(15)# == 3
p odd_not_prime(48)# == 10
#p odd_not_prime(82)# == 20


# longer way of doing the problem

# def not_prime(number)
  # return true if number == 1
  # array = []
  # 1.upto(number) do |num|
    # if number % num == 0
      # array << num
    # end
  # end
  # if array.size > 2
    # return true
  # end
# end
# 
# def odd_not_prime(number) 
  # array = []
  # 1.upto(number) do |num|
    # array << num if num.odd?
  # end
  # 
  # test = array.select do |num|
    # not_prime(num) == true
  # end.size
# end


 # 1 / 1
#   
  # 3 / 3
  # 3 / 2
  # 3 / 1
#   
  # 5 / 5 == 0 true
  # 5 / 4 == 0 false
  # 5 / 3 == 0 false 
  # 5 / 2 == 0 false
  # 5 / 1 == 0 true
  # ^prime
#   
  # 9 / 9 = 0 true
  # 9 / 8 = 0 false
  # 9 / 7 = 0 false
  # 9 / 6 = 0 false
  # 9 / 5 = 0 false
  # 9 / 4 = 0 false
  # 9 / 3 = 0 true
  # 9 / 2 = 0 false
  # 9 / 1 = 0 true
  # ^not prime
