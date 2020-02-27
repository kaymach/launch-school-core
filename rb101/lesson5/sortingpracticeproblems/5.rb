munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# result = munsters.map do |hash| 
#   hash.select do |people|
#   people["gender"] == "male"
#   end
# end
# 
# result.values_at("age")

age_total = 0

munsters.each_value do |details|
  age_total += details["age"] if details["gender"] == "male"
end

puts age_total
