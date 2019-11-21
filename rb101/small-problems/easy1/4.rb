vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  elementcounts = Hash.new(0)
  array.each {|item| elementcounts[item] += 1}
  elementcounts.each do |item, count|
    puts "#{item} => #{count}"
  end
end

count_occurrences(vehicles)

# For further exploration:
# just use .downcase! on item on line 8. See below.

# array.each do |item| 
#  item.downcase!
#  elementcounts[item] += 1
# end