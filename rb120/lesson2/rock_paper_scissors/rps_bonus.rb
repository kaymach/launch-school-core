class RPSGame
  attr_accessor :human, :computer
  attr_reader :history, :round_number

  COMBO = {
    "rock": { abrev: "r", beats: ["scissors", "lizard"] },
    "paper": { abrev: "p", beats: ["rock", "spock"] },
    "scissors": { abrev: "sc", beats: ["paper", "lizard"] },
    "spock": { abrev: "sp", beats: ["scissors", "rock"] },
    "lizard": { abrev: "l", beats: ["spock", "paper"] }
  }

  def initialize
    @human = Human.new
    @computer = Computer.new
    @history = []
    @round_number = 1
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors, Spock, Lizard!"
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors, Spock, Lizard. Good bye!"
  end

  def display_moves
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
  end

  def display_winner
    puts "It's a tie!" unless human_won || computer_won
  end

  def human_won
    return false unless human.move > computer.move
    puts "#{human.name} won!"
    human.increment_score(1)
  end

  def computer_won
    return false unless human.move < computer.move
    puts "#{computer.name} won!"
    computer.increment_score(1)
  end

  def reset_score
    human.score = 0
    computer.score = 0
  end

  def save_history
    save_history_round
    save_history_winner
    history << ""
    @round_number += 1
  end

  def save_history_winner
    history <<
      if human.move > computer.move
        "#{human.name} won!"
      elsif human.move < computer.move
        "#{computer.name} won!"
      else
        "It's a tie!"
      end
  end

  def save_history_round
    history << "Round #{round_number}"
    history << "#{human.name} chose #{human.move}."
    history << "#{computer.name} chose #{computer.move}."
  end

  def validate_answer
    answer = nil
    loop do
      answer = gets.chomp
      break if ["y", "n"].include?(answer.downcase)
      puts "Sorry, must be y or n."
    end
    answer
  end

  def grand_winner?
    if human.score == 10 || computer.score == 10
      puts "We have a grand winner!"
      reset_score
      puts "Restart game? (y/n)"
    else
      puts "Play another round? (y/n)"
    end
    answer = validate_answer
    return false if answer.downcase == "n"
    return true if answer.downcase == "y"
  end

  def display_history
    puts "Do you want to display the history of your moves? (y/n)"
    puts @history unless validate_answer == "n"
  end

  def computer_personality
    case computer.name
    when "R2D2" then R2D2.personality
    when "Hal" then Hal.personality(human)
    when "Chappie" then Chappie.personality
    when "Sonny" then Sonny.personality
    when "Number5" then Number5.personality(human, computer)
    end
  end

  # rubocop:disable Metrics/MethodLength
  def play
    display_welcome_message
    fake_load
    loop do
      system('clear') || system('cls')
      score_board
      human.choose
      computer.choose
      display_moves
      computer_personality
      display_winner
      save_history
      break unless grand_winner?
    end
    display_history
    display_goodbye_message
  end
  # rubocop:enable Metrics/MethodLength

  def fake_load
    # sleep rand(2)
    puts "Loading.."
    # sleep rand(2)
    puts "Loading..."
    # sleep 1
  end

  def score_board
    puts "#{human.name} has #{human.score}/10 points." \
      " #{computer.name} has #{computer.score}/10 points."
  end
end

class Move
  attr_reader :value

  VALUES = ["rock", "paper", "scissors", "spock", "lizard"]

  def initialize(value)
    @value = value
  end

  # rubocop:disable Metrics/AbcSize
  def >(other_move)
    hashcombo =
      RPSGame::COMBO.select { |symbol, _| symbol == value.to_sym }

    value == hashcombo.keys.join &&
      other_move.value == hashcombo[value.to_sym][:beats].select do |x|
        x == other_move.value
      end.join
  end

  def <(other_move)
    hashcombo =
      RPSGame::COMBO.select { |symbol, _| symbol == other_move.value.to_sym }

    other_move.value == hashcombo.keys.join &&
      value == hashcombo[other_move.value.to_sym][:beats].select do |x|
        x == value
      end.join
  end
  # rubocop:enable Metrics/AbcSize

  def to_s
    @value
  end
end

class Player
  attr_accessor :move, :name, :score

  def initialize
    set_name
    @score = 0
  end

  def increment_score(num)
    @score += num
  end
end

class Human < Player
  def set_name
    n = ""
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value."
    end
    self.name = n
  end

  def validate_move
    choice = nil
    loop do
      choice = gets.chomp
      break if RPSGame::COMBO.key?(choice.to_sym) ||
               RPSGame::COMBO.values.any? { |hash| choice == hash[:abrev] }
      puts "That's not a valid choice."
    end
    choice
  end

  def choose
    puts "Please choose (r)ock, (p)aper, (sc)issors, (sp)ock, or (l)izard:"
    choice = validate_move

    if RPSGame::COMBO.values.any? { |hash| choice == hash[:abrev] }
      choice = RPSGame::COMBO.select do |_, hashvalue|
        hashvalue[:abrev] == choice
      end

      choice = choice.keys.join
    end
    self.move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    self.name = ["R2D2", "Hal", "Chappie", "Sonny", "Number5"].sample
  end

  def choose
    self.move = Move.new(Object.const_get(name).choose)
  end
end

class R2D2 < Computer
  def self.choose
    Move::VALUES[0]
  end

  def self.personality
    puts "R2D2 whirls around dangerously."
  end
end

class Hal < Computer
  def self.choose
    Move::VALUES[(rand(2))]
  end

  def self.personality(human_object)
    puts "Hal: \"I can't let you do that, #{human_object.name}.\""
    @new_move = Move::VALUES.sample
    human_object.move = Move.new(@new_move)
    puts "Hal has changed your move to #{@new_move}!"
  end
end

class Chappie < Computer
  def self.choose
    Move::VALUES[(2..3).to_a.sample]
  end

  def self.personality
    puts "Chappie: \"I won't lose this time!\""
  end
end

class Sonny < Computer
  def self.choose
    Move::VALUES[3]
  end

  def self.personality
    puts "Sonny: \"I'll love spock for another #{rand(900)} years!\""
  end
end

class Number5 < Computer
  def self.choose
    Move::VALUES[(rand(4))]
  end

  def self.personality(human_object, computer_object)
    puts "Number5: \"I want our game to go on forever!\""
    human_object.move = computer_object.move
    puts "Number5 has changed your move to #{computer_object.move}!"
  end
end

system('clear') || system('cls')

RPSGame.new.play
