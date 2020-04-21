def pig_it(str)
  str.split(/\b/).map do |element|
    if element == " "
      element
    else
    element.chars.rotate.join + "ay"
    end
  end.join("")
end

p pig_it('Pig latin is cool') # igPay atinlay siay oolcay
p pig_it('Hello world !')     # elloHay orldway !
