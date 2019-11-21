VALID_CHOICES = %w(rock paper scissors spock lizard)
VALID_CHOICES_ABREV = %w(r p sc sp l)
player_score_tally = []
computer_score_tally = []

COMBO = {
  rock: ["scissors", "lizard"],
  paper: ["rock", "spock"],
  scissors: ["paper", "lizard"],
  spock: ["scissors", "rock"],
  lizard: ["spock", "paper"]
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def abrev_to_word(abrev)
  case abrev
  when "r"
    "rock"
  when "p"
    "paper"
  when "sc"
    "scissor"
  when "sp"
    "spock"
  when "l"
    "lizard"
  end
end

def win?(first, second)
  (first == "rock" && COMBO[:rock].include?(second)) ||
    (first == "paper" && COMBO[:paper].include?(second)) ||
    (first == "scissors" && COMBO[:scissors].include?(second)) ||
    (first == "spock" && COMBO[:spock].include?(second)) ||
    (first == "lizard" && COMBO[:lizard].include?(second))
end

def display_results(player, computer)
  if win?(player, computer)
    "=> You won!"
  elsif win?(computer, player)
    "=> Computer won!"
  else
    "=> It's a tie!"
  end
end

def win_tally_player(player, playerscore)
  if player == "=> You won!"
    playerscore << 1
  end
  playerscore.sum
end

def win_tally_computer(computer, computerscore)
  if computer == "=> Computer won!"
    computerscore << 1
  end
  computerscore.sum
end

loop do
  choice = ""
  loop do
    prompt("Choose one: (r)ock, (p)aper, (sc)issors, (sp)ock, (l)izard")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice) || VALID_CHOICES_ABREV.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  if VALID_CHOICES_ABREV.include?(choice)
    choice = abrev_to_word(choice)
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  puts display_results(choice, computer_choice)

  winnermsg = display_results(choice, computer_choice)

  prompt("Player has #{win_tally_player(winnermsg, player_score_tally)}/5 wins.")
  prompt("Computer has #{win_tally_computer(winnermsg, computer_score_tally)}/5 wins.")

  if player_score_tally.sum == 5 || computer_score_tally.sum == 5
    prompt("We have a grand winner!")
    break
  else
    prompt("Do you want to play again?")
    answer = Kernel.gets().chomp()
    break unless answer.downcase().start_with?("y")
  end
end

prompt("Thank you for playing. Good bye!")



# First attempt at this had me doing some really weird stuff
# trying to get both the losing moves into the "second" parameter in win?

#COMBO = {
#  rock: ["scissors", "||", "lizard"],
#  paper: ["rock" ,"||", "spock"],
#  scissors: ["paper" ,"||", "lizard"],
#  spock: ["scissors" ,"||", "rock"],
#  lizard: ["spock" ,"||", "paper"]
#  }

#def win?(first, second)
#  (first == "rock" && second == COMBO[:rock].join(", ")) ||
#    (first == "paper" && second == COMBO[:paper].join(", ")) ||
#    (first == "scissors" && second == COMBO[:scissors].join(", ")) ||
#    (first == "spock" && second == COMBO[:spock].join(", ")) ||
#    (first == "lizard" && second == COMBO[:lizard].join(", "))
#end
