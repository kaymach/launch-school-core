# Example 3
# Line                    1
# Action                  method call (map)
# Object                  the outer array
# Side Effect             none
# Return Value            new array [1, 3]
# Is Return Value Used?   no

# Line                    1-4
# Action                  block execution
# Object                  each sub array
# Side Effect             none
# Return Value            Integer at index 0 of sub-array
# Is Return Value Used?   yes, used by map for transformation

# Line                    2
# Action                  method call (first)
# Object                  each sub array
# Side Effect             none
# Return Value            element at index 0 of sub array
# Is Return Value Used?   yes, used by puts

# Line                    2
# Action                  method call (puts)
# Object                  integer at index 0 of sub array
# Side Effect             outputs a string representation of an integer
# Return Value            nil
# Is Return Value Used?   no

# Line                    3
# Action                  method call (first)
# Object                  each sub array
# Side Effect             none
# Return Value            element at index 0 of sub array
# Is Return Value Used?   yes, used to determine return value of block

###############################################################################
output: 18, 7, 12
value: [[18, 7], [3, 12]]
# Example 4
# Line                    1
# Action                  variable assignment
# Object                  n/a
# Side Effect             none
# Return Value            [[18, 7], [3, 12]]
# Is Return Value Used?   no 

# Line                    1
# Action                  method call (each)
# Object                  the outer array
# Side Effect             none
# Return Value            [[18, 7], [3, 12]]
# Is Return Value Used?   yes. used by variable assignment to variable

# Line                    1-7
# Action                  outer block execution
# Object                  each sub array
# Side Effect             none
# Return Value            each sub array
# Is Return Value Used?   no

# Line                    2
# Action                  method call (each)
# Object                  each sub array
# Side Effect             none
# Return Value            sub array in current iteration
# Is Return Value Used?   yes, used to determine return value of outer block

# Line                    2-6
# Action                  inner block execution
# Object                  element of the sub array in that iteration
# Side Effect             none
# Return Value            nil
# Is Return Value Used?   no

# Line                    3
# Action                  comparison (>)
# Object                  1
# Side Effect             1
# Return Value            1
# Is Return Value Used?   1 

# Line                    3-5
# Action                  conditional (if)
# Object                  1
# Side Effect             1
# Return Value            1
# Is Return Value Used?   1 

# Line                    4
# Action                  method call (puts)
# Object                  1
# Side Effect             1
# Return Value            1
# Is Return Value Used?   1 

###############################################################################

# [[2, 4], [6, 8]]


