require "pry"

class Board
  attr_reader :squares

  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                  [[1, 5, 9], [3, 5, 7]]              # diagonals

  def initialize
    @squares = {}
    reset
  end

  def []=(num, marker)
    @squares[num].marker = marker
  end

  def unmarked_keys
    @squares.keys.select { |key| @squares[key].unmarked? }
  end

  def array_squares
    @squares.values_at(*line)
  end

  def full?
    unmarked_keys.empty?
  end

  def someone_won?
    !!winning_marker
  end

  def winning_marker
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      if three_identical_markers?(squares)
        return squares.first.marker
      end
    end
    nil
  end

  def reset
    (1..9).each { |key| @squares[key] = Square.new }
  end

  # rubocop:disable Metrics/AbcSize
  # rubocop:disable Metrics/MethodLength
  def draw
    puts "     |     |"
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}"
    puts "     |     |"
  end
  # rubocop:enable Metrics/AbcSize
  # rubocop:enable Metrics/MethodLength

  private

  def three_identical_markers?(squares)
    markers = squares.select(&:marked?).collect(&:marker)
    return false if markers.size != 3
    markers.min == markers.max
  end
end

class Square
  INITIAL_MARKER = " "

  attr_accessor :marker

  def initialize(marker=INITIAL_MARKER)
    @marker = marker
  end

  def to_s
    @marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end

  def marked?
    marker != INITIAL_MARKER
  end
end

class Player
  @@markers_left = ["X", "O"]

  attr_accessor :name, :score, :marker, :first_turn

  def initialize
    @score = 0
    set_name
    pick_marker
  end

  def increment_score(num)
    @score += num
  end
end

class Human < Player
  def set_name
    n = ""
    loop do
      puts "Please enter your name:"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a valid name."
    end
    self.name = n.capitalize
  end

  def pick_marker
    n = ""
    loop do
      puts "Please pick X or O:"
      n = gets.chomp.capitalize
      break if n == "X" || n == "O"
      puts "Sorry, must enter a valid marker."
    end
    self.marker = n
    @@markers_left.delete(n)
  end
end

class Computer < Player
  def set_name
    self.name = %w(Hal Wall-E Smokey).sample
  end

  def pick_marker
    self.marker = @@markers_left[0]
  end
end

class TTTGame
  WHO_GOES_FIRST = "choose"

  @@game_first = ""

  attr_reader :board, :human, :computer

  def initialize
    clear
    @board = Board.new
    @human = Human.new
    @computer = Computer.new
    @current_marker = ""
  end

  def play
    clear
    display_welcome_message
    determine_first_turn
    main_game
    display_goodbye_message
  end

  private

  def determine_first_turn
    determine_first_turn_choose if WHO_GOES_FIRST == "choose"
    if @@game_first == "computer"
      @current_marker = computer.marker
      @@game_first = computer.marker
    elsif @@game_first == "human"
      @current_marker = human.marker
      @@game_first = human.marker
    end
    determine_first_turn_on_global
  end

  def determine_first_turn_on_global
    if WHO_GOES_FIRST == "computer"
      @current_marker = computer.marker
      @@game_first = computer.marker
    elsif WHO_GOES_FIRST == "human"
      @current_marker = human.marker
      @@game_first == human.marker
    end
  end

  def determine_first_turn_choose
    choice = ""
    loop do
      puts "Who goes first, #{human.name}? Human or Computer?"
      choice = gets.chomp.downcase

      break if choice == "human" || choice == "computer"
      puts "Sorry, that's not a valid choice."
    end
    @@game_first = choice
  end

  def display_welcome_message
    puts "Welcome to Tic Tac Toe!"
    puts ""
  end

  def display_goodbye_message
    puts "Thanks for playing Tic Tac Toe! Goodbye!"
  end

  def display_board
    score_board
    puts ""
    puts "You're a #{human.marker}. Computer is a #{computer.marker}."
    puts ""
    board.draw
    puts ""
  end

  def clear_screen_and_display_board
    clear
    display_board
  end

  def human_moves
    puts "Choose a square: #{joinor}"
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts "Sorry, that's not a valid choice."
    end
    board[square] = human.marker
  end

  def joinor(delim = ", ", andor = "or")
    if board.unmarked_keys.count == 2
      board.unmarked_keys.join(" #{andor} ")
    else
      last_digit = board.unmarked_keys.pop
      (board.unmarked_keys[0..-2] << "#{andor} #{last_digit}").join(delim)
    end
  end

  def computer_moves
    if ai_detect_win_condition
      square = ai_detect_win_condition
      board[square] = computer.marker
    elsif board.squares[5].marker == Square::INITIAL_MARKER
      board[5] = computer.marker
    else
      computer_random_piece
    end
  end

  def ai_detect_win_condition
    possible_defense = []
    Board::WINNING_LINES.each do |line|
      test = []
      test << board.squares.values_at(*line)[0].marker
      test << board.squares.values_at(*line)[1].marker
      test << board.squares.values_at(*line)[2].marker
      if test.count(human.marker) == 2 || test.count(computer.marker) == 2
        possible_defense <<
          board.squares.select do |k, v|
            line.include?(k) && v.marker == Square::INITIAL_MARKER
          end.keys.sample
      end
    end
    possible_defense.delete(nil)
    possible_defense.sample
  end

  def computer_random_piece
    board[board.unmarked_keys.sample] = computer.marker
  end

  def current_player_moves
    if human_turn?
      human_moves
      @current_marker = computer.marker
    else
      computer_moves
      @current_marker = human.marker
    end
  end

  def human_turn?
    @current_marker == human.marker
  end

  def player_move
    loop do
      current_player_moves
      break if board.someone_won? || board.full?
      clear_screen_and_display_board if human_turn?
    end
  end

  def main_game
    loop do
      display_board
      player_move
      display_result
      break unless grand_winner?
      reset
      display_play_again_message
    end
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

  def reset_score
    human.score = 0
    computer.score = 0
  end

  def score_board
    puts "#{human.name} has #{human.score}/10 points." \
      " #{computer.name} has #{computer.score}/10 points."
  end

  def display_result
    clear_screen_and_display_board

    case board.winning_marker
    when human.marker then puts "You won!"
                           human.increment_score(1)
    when computer.marker then puts "Computer won!"
                              computer.increment_score(1)
    else
      puts "It's a tie!"
    end
  end

  def clear
    system('clear') || system('cls')
  end

  def reset
    @current_marker = @@game_first
    board.reset
    clear
  end

  def display_play_again_message
    puts "Let's play again!"
    puts ""
  end
end

game = TTTGame.new
game.play
