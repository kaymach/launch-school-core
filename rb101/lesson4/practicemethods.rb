#1 [1,2,3] because "hi" is truthy and will return all elements in the selection

#2 it uses the block to determine the truthiness of the elements regarding it and returns how many there are.

#3 [1,2,3] because it returns a new array for which the elements is not true in regards to the block. 
# Since the return of the block is nil, the elements are all returned as they are not nil's.

#4 {"a" => "ant", "b" => "bear", "c" => "cat"}. 
# New hash object with the first letter set as the key and elements set as the values for each of those keys

#5 Removes and returns the first  element in the hash which is [:a, "ant"]

#6 11. Pop removes and returns last element in the array which is caterpillar and size 
# gives the amount of characters in the string.

#7 Blocks return value is true. Last expression within the block is asking if 1 is odd on first iteration.
# The any method returns true. It outputs 1 because the method stops iterating once it's true, 
# which for the first element, is true.

#8 Take returns the first X elements in the array. It is not destructive, as it returns a new array.
# Documentation shows this.

#9 [nil, "bear"]. This is because the block is determining the transformation of the hash.
# Since "ant" is less than 3, it is transformed into nil and "bear" is assigned secondly 
# because it's true in the if statement.

#10 [1, nil, nil]. The first value is assigned as per the else statement. The nil's come from the puts statement.
# Puts always returns nil.
