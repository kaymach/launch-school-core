require "pry"

def integer?(str)
  str.to_i.to_s == str
end

def minilang(string)
  register = []
  current_thing = []
  final_builder = []

  string.split.each do |string|
    if string.to_i.to_s == string
      current_thing << string.to_i
    else
      current_thing << string
    end
    
    case

    when current_thing[0].is_a?(Integer)
      register << current_thing[0]

    when current_thing == "PUSH"

    when current_thing == "ADD"

    when current_thing == "SUB"

    when current_thing == "MULT"

    when current_thing == "DIV"

    when current_thing == "MOD"

    when current_thing == "POP"

    when current_thing == "POP"

    when current_thing == "PRINT"
    
    end
    final_builder << register
  end
  final_builder
end

#minilang('PRINT')
#
minilang('5 PUSH 3 MULT PRINT')
#
#minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
#
#minilang('5 PUSH POP PRINT')
#
#minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
#
#minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
#
#minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
#
#minilang('-3 PUSH 5 SUB PRINT')
#
#minilang('6 PUSH')
