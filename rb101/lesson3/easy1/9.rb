flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.delete_if { |name, number| name != "Barney"}

p flintstones.flatten.to_a

#OR

flintstones.assoc("Barney")
