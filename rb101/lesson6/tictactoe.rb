require "pry"

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals
INITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"

scores = { player: 0, computer: 0 }

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
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
    return emptysquares.join(" #{andor} ")
  elsif emptysquares.count == 1
    return emptysquares.join
  else
    last_digit = emptysquares.pop
    emptysquares << "#{andor} #{last_digit}"
    emptysquares.join("#{delim}")
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

def detect_player_win_condition(brd)
  WINNING_LINES.each do |line|
    #binding.pry
    if brd.values_at(*line).count(PLAYER_MARKER) == 2
      return brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
    end
  end
  nil
end

def grand_winner?(scores)
  scores.value?(5)
end

def ai_defense!(brd)
  #binding.pry
  square = detect_player_win_condition(brd)
  if detect_player_win_condition(brd)
    brd[square] = COMPUTER_MARKER
  else
    computer_places_piece!(brd)
    #binding.pry
  end
end

loop do
  board = initialize_board

  loop do
    system "clear"

    prompt("Player: #{scores[:player]}/5 wins")
    prompt("Computer: #{scores[:computer]}/5 wins")

    display_board(board)

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    ai_defense!(board)
    break if someone_won?(board) || board_full?(board)
  end

  system "clear"

  prompt("Player: #{scores[:player]}/5 wins")
  prompt("Computer: #{scores[:computer]}/5 wins")

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
    answer = gets.chomp
    break unless answer.downcase.start_with?("y")
  else
    prompt "Play another round? (y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?("y")
  end
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
