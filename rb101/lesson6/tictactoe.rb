WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals
INITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"
WHO_GOES_FIRST = "choose"

scores = { player: 0, computer: 0 }

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  puts ""
  prompt "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(emptysquares, delim = ", ", andor = "or")
  if emptysquares.count == 2
    emptysquares.join(" #{andor} ")
  elsif emptysquares.count == 1
    emptysquares.join
  else
    last_digit = emptysquares.pop
    emptysquares << "#{andor} #{last_digit}"
    emptysquares.join(delim)
  end
end

def player_places_piece!(brd)
  square = ""
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  if ai_detect_win_condition(brd, COMPUTER_MARKER)
    square = ai_detect_win_condition(brd, COMPUTER_MARKER)
    brd[square] = COMPUTER_MARKER
  elsif ai_detect_win_condition(brd, PLAYER_MARKER)
    square = ai_detect_win_condition(brd, PLAYER_MARKER)
    brd[square] = COMPUTER_MARKER
  elsif brd[5] == INITIAL_MARKER
    brd[5] = COMPUTER_MARKER
  else
    computer_random_piece!(brd)
  end
end

def place_piece!(brd, current_player)
  if current_player == "player"
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def alternate_player(current_player)
  if current_player == "player"
    "computer"
  else
    "player"
  end
end

def computer_random_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

# rubocop:disable LineLength
def ai_detect_win_condition(brd, marker)
  possible_defense = []
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(marker) == 2
      possible_defense <<
        brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.sample
    end
  end
  possible_defense.delete(nil)
  possible_defense.sample
end
# rubocop:enable LineLength

def grand_winner?(scores)
  scores.value?(5)
end

def greeting_message(player)
  loop do
    prompt "Welcome to Tic Tac Toe. Win 5 rounds to be the grand winner!"
    prompt "#{player.capitalize} goes first."
    prompt "Enter any key to continue."
    continue = gets.chomp
    break unless continue == nil?
  end
end

system("clear") || system("cls")

if WHO_GOES_FIRST == "choose"
  choice = ""
  prompt "Welcome to Tic Tac Toe. Win 5 rounds to be the grand winner!"
  loop do
    prompt "Who goes first? Player or Computer?"
    choice = gets.chomp.downcase

    break if choice == "player" || choice == "computer"
    prompt "Sorry, that's not a valid choice."
  end
elsif WHO_GOES_FIRST == "player"
  choice = "player"
  greeting_message(choice)
elsif WHO_GOES_FIRST == "computer"
  choice = "computer"
  greeting_message(choice)
end

loop do
  board = initialize_board

  current_player = choice

  loop do
    system("clear") || system("cls")

    prompt "Player: #{scores[:player]}/5 wins"
    prompt "Computer: #{scores[:computer]}/5 wins"

    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  system("clear") || system("cls")

  prompt "Player: #{scores[:player]}/5 wins"
  prompt "Computer: #{scores[:computer]}/5 wins"

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    scores[detect_winner(board).downcase.to_sym] += 1
  else
    prompt "It's a tie!"
  end

  if grand_winner?(scores)
    prompt "We have a grand winner!"
    scores = { player: 0, computer: 0 } # clearing score for game restart
    prompt "Restart game? (y or n)"
  else
    prompt "Play another round? (y or n)"
  end
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
