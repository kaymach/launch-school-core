# 1      2      3     4       5    6     7    8      9
# off   off     off   off   off   off   off   off   off
# 
# 
# 
# 
# 1      2      3     4       5    6     7    8      9
# on    on     on     on      on   on   on   on     on
# 
# 1      2      3     4       5    6     7    8      9
# on    off    on    off      on  off   on   off     on
# 
# 1      2      3     4       5    6     7    8      9
# on    off    off    off     on  on   on   off     off

# return value at end is just the switches that are ON or 1
require "pry"

def lights(switch_count)
  lights = {}
  (1..switch_count).each { |num| lights[num] = "OFF" }
  lights
end

def switch_lights(switch_count)
  light_board = lights(switch_count)

  light_board.map { |k, v| light_board[k] = "ON" }        # first pass

  iterator = 2

  until iterator == switch_count
    light_board.map do  |k, v|           #  pass where key values start at 2 and increment by 2
      binding.pry
      if k >= 2 && k % 2 == 0
        if light_board[k] == "ON"
          light_board[k] = "OFF"
        elsif light_board[k] == "OFF"
          light_board[k] = "ON"
        end
      end
    end

    iterator += 1

    break if iterator == switch_count

    light_board.map do |k, v|            #  pass where key values start at 3 and increment by 3
      binding.pry
      if k >= 3 && k % 3 == 0
        if light_board[k] == "ON"
          light_board[k] = "OFF"
        elsif light_board[k] == "OFF"
          light_board[k] = "ON"
        end
      end
    end
    iterator += 1
  end
  light_board
end

# at the end, select which values of the hash is "ON"

# THIS MAKES NO SENSE. If in round 3, lights 2 is off, HOW, in the next round, when 2 gets toggled again, is it still off? should be on

p switch_lights(5)
