munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  case details["age"]
  when (0..17)
    details["age_group"] = "kid"
  when (18..64)
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end






# case munsters
# when munsters.values.any?{ |hash| (0..17).cover?(hash["age"]) }
#   munsters["age_group"] = "kid"
# when munsters.values.any?{ |hash| (18..64).cover?(hash["age"]) }
#   munsters["age_group"] = "adult"
# else
#   munsters["age_group"] = "senior"
# end
