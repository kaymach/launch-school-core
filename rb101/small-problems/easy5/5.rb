def cleanup(string)
  string.gsub(/[^\w]/, " ").gsub(/\s+/, ' ')
end

p cleanup("---what's my +*& line?")
