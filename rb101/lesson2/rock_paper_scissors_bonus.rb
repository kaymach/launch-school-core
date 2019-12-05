KEEP_PLAYING = %w(y n)
scores = { player: 0, computer: 0 }

COMBO = {
  "rock": { abrev: "r", beats: ["scissors", "lizard"] },
  "paper": { abrev: "p", beats: ["rock", "spock"] },
  "scissors": { abrev: "sc", beats: ["paper", "lizard"] },
  "spock": { abrev: "sp", beats: ["scissors", "rock"] },
  "lizard": { abrev: "l", beats: ["spock", "paper"] }
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  hashcombo = COMBO.select { |symbol, _| symbol == first.to_sym }

  first == hashcombo.keys.join &&
    second == hashcombo[first.to_sym][:beats].select { |x| x == second }.join
end

def display_results(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie!"
  end
end

def win_tally_player(player, playerscore)
  if player == "You won!"
    playerscore[:player] += 1
  end
  playerscore[:player]
end

def win_tally_computer(computer, computerscore)
  if computer == "Computer won!"
    computerscore[:computer] += 1
  end
  computerscore[:computer]
end

winnermsg = ""
loop do
  system('clear') || system('cls')

  choice = ""

  prompt("Player: #{scores[:player]}/5 wins.")
  prompt("Computer: #{scores[:computer]}/5 wins.")

  loop do
    prompt("Choose one: (r)ock, (p)aper, (sc)issors, (sp)ock, (l)izard")
    choice = Kernel.gets().chomp()

    if COMBO.key?(choice.to_sym) ||
       COMBO.values.any? { |hash| choice == hash[:abrev] }
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  if COMBO.values.any? { |hash| choice == hash[:abrev] }
    choice = COMBO.select do |_, hashvalue|
      hashvalue[:abrev] == choice
    end

    choice = choice.keys.join
  end

  computer_choice = COMBO.keys.sample.to_s

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  prompt(display_results(choice, computer_choice))

  winnermsg = display_results(choice, computer_choice)

  win_tally_player(winnermsg, scores)
  win_tally_computer(winnermsg, scores)

  if scores.value?(5)
    prompt("We have a grand winner!")
    break
  else
    prompt("Do you want to play again? Enter 'y' to continue or 'n' to exit.")
  end

  answer = ""
  loop do
    answer = Kernel.gets().chomp()
    if KEEP_PLAYING.include?(answer.downcase())
      break
    else
      prompt("Please enter 'y' or 'n'.")
    end
  end

  if answer.downcase() == "n"
    break
  end
end

prompt("Thank you for playing. Good bye!")
