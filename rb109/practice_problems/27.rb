TRANSLATE = {
  "0"=>0,
  "1"=>1, "2"=>2, "3"=>3, "4"=>4, "5"=>5,
  "6"=>6, "7"=>7, "8"=>8, "9"=>9, "10"=>10
}

def string_to_integer(string)
  string.chars.map do |char|
    TRANSLATE[char]
  end.reduce(0) do |accum, num|
    accum = (10 * accum) + num
  end
end


p string_to_integer('4321')# == 4321
p string_to_integer('570')# == 570

#accum = (10 * accum) + num

#0 = (10 * 0) + 4
#4 = (10 * 4) + 3
#43 = (10 * 43) + 2
#432 = (10 * 432) + 1
#4321
