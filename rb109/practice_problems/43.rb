# Write a method that takes an array of strings, and returns an array of the same string
# values, except with the vowels removed.

# -----------------------------
# **input:**
# Write a list of words: green, yellow, black, white

# **output:**
# List of modified words are: grn, yllw, bck, wht

def remove_vowels(array)
  array.map {|word| word.delete("aeiou")}
end

p remove_vowels(["green, yellow, black, white"])
