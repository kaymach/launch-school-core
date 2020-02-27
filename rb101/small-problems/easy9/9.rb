def get_grade(number1, number2, number3)
  average = (number1 + number2 + number3) / 3

  case average
  when 90..100
    return "A"
  when 80..89
    return "B"
  when 70..79
    return "C"
  when 60..69
    return "D"
  else
    return "F"
  end
end



puts get_grade(95, 90, 93)
puts get_grade(50, 50, 95)
