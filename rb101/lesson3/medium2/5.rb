# def tricky_method!(a_string_param, an_array_param)
#   a_string_param << "rutabaga"
#   an_array_param << "rutabaga"
# end
# 
# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method!(my_string, my_array)
# 
# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# change method name to tricky_method! to indicate that it will mutate. also, changing += to << for a_string_param
# will now always mutate the string.


# after reviewing solution, don't use method to mutate.

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
