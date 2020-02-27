def buy_fruit(array)
  array.each_with_object([]) do |array, newarray|
    quantity = array[1]

    quantity.times do
    newarray << array[0]
    end
  end
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])

# def buy_fruit(array)
#   fruit_array = []
#   quantity = array[1]
# 
#   quantity.times do
#     fruit_array << array[0]
#   end
# end
# 
# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
