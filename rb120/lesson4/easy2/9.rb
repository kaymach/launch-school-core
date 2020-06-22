class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end
end


# if we had a bingo object, it would use the play method from within Bingo class instead of 
# the one from Game
