class GuessingGame
  attr_accessor :guesses_left, :player

  def initialize(range1, range2)
    @player = Player.new
    @range = range1..range2
    reset
  end

  def play
    loop do
      tries_left
      player_guess
      result
      puts ""
      break if @guesses_left == 0 || won?
    end
    if won?
      winner_message
    else
      puts "You have no more guesses. You lost!"
      puts ""
    end
    reset
  end

  def tries_left
    puts "You have #{guesses_left} guesses remaining."
    increment_tries
  end

  def increment_tries
    @guesses_left -= 1
  end

  def player_guess
    choice = nil
    loop do
      print "Enter a number between #{@range.first} and #{@range.last}: "
      choice = gets.chomp.to_i
      break if @range.include?(choice)
      print "Invalid guess. "
    end
    player.number_guessed = choice
  end

  def result
    if player.number_guessed == @winning_number
      puts "That's the number!"
    elsif player.number_guessed < @winning_number
      puts "Your guess is too low."
    elsif player.number_guessed > @winning_number
      puts "Your guess is too high."
    end
  end

  def won?
    @winning_number == player.number_guessed
  end

  def winner_message
    puts "You won!"
  end

  def reset
    @guesses_left = Math.log2(@range.size).to_i + 1
    @winning_number = rand(@range)
  end
end

class Player
  attr_accessor :number_guessed
  def initialize
    @number_guessed = nil
  end
end

game = GuessingGame.new(501, 1500)
game.play
game.play
