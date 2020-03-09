KEEP_PLAYING = %w(y n)
GAME_TYPE = 21
DEALER_STOP = GAME_TYPE - 4

scores = { player: 0, dealer: 0 }

player_hand = []
dealer_hand = []

current_card = []

def prompt(msg)
  puts "=> #{msg}"
end

def greeting_message
  loop do
    prompt "Welcome to #{GAME_TYPE}. Win 5 rounds to be the grand winner!"
    sleep 1
    prompt "Player goes first. Then dealer."
    sleep 1
    prompt "Enter any key to continue."
    continue = gets.chomp
    break unless continue == nil?
  end
end

def initial_player_deal(deck, current_card, player_hand)
  sleep 1
  prompt "Player:"
  player_hand << deal_card!(deck, current_card)
  card_details(current_card)
  player_hand << deal_card!(deck, current_card)
  card_details(current_card)
end

def initial_dealer_deal(deck, current_card, dealer_hand)
  prompt "Dealer:"
  dealer_hand << deal_card!(deck, current_card)
  card_details(current_card)
  dealer_hand << deal_card!(deck, current_card)
  prompt "Dealing an unknown card to dealer..."
  sleep 2
end

def deal_card!(deck, current_card)
  current_card.clear

  current_card << suit = deck.keys.sample
  current_card << card = deck[(suit)][0].keys.sample
  card_value = deck[(suit)][0].values_at(card)[0]

  deck[suit][0].delete(card)
  card_value
end

def card_details(current_card)
  sleep 1
  if current_card[1].start_with?("8", "A")
    prompt "Dealing an #{current_card[1]} of #{current_card[0]}..."
  else
    prompt "Dealing a #{current_card[1]} of #{current_card[0]}..."
  end
  sleep 1
end

def ace_value!(player_hand, dealer_hand)
  if player_hand.sum > GAME_TYPE && player_hand.last == 11
    player_hand.pop
    player_hand << 1
  elsif dealer_hand.sum > GAME_TYPE && dealer_hand.last == 11
    dealer_hand.pop
    dealer_hand << 1
  end
end

def busted?(player_hand, dealer_hand)
  if player_hand.sum > GAME_TYPE
    true
  elsif dealer_hand.sum > GAME_TYPE
    true
  else
    false
  end
end

def hit_or_stay
  answer = nil
  loop do
    prompt "(h)it or (s)tay?"
    answer = gets.chomp.downcase

    if answer == "h"
      answer = "hit"
    elsif answer == "s"
      answer = "stay"
    end

    break if answer == "stay" || answer == "hit"
    prompt "Please choose (h)it or (s)tay."
  end
  answer
end

def grand_winner?(scores)
  scores.value?(5)
end

def show_scores(scores)
  prompt "Player: #{scores[:player]}/5 wins"
  prompt "Dealer: #{scores[:dealer]}/5 wins"
end

def update_scores(scores, player_or_dealer)
  if player_or_dealer == "player"
    scores[:player] += 1
  elsif player_or_dealer == "dealer"
    scores[:dealer] += 1
  end
end

def reset_scores(scores)
  scores[:player] = 0
  scores[:dealer] = 0
end

def clear_hands(player_hand, dealer_hand)
  player_hand.clear
  dealer_hand.clear
end

def score_header(scores)
  system("clear") || system("cls")

  show_scores(scores)

  puts ""
end

def declare_win_at_comparison!(player_hand, dealer_hand, scores)
  if player_hand.sum > dealer_hand.sum &&
     !(busted?(player_hand, dealer_hand))
    prompt "Player wins!"
    update_scores(scores, "player")

  elsif dealer_hand.sum > player_hand.sum &&
        !(busted?(player_hand, dealer_hand))
    prompt "Dealer wins!"
    update_scores(scores, "dealer")
  end
end

def it_a_tie?(player_hand, dealer_hand)
  if player_hand.sum == dealer_hand.sum
    prompt "It's a tie!"
  end
end

def play_again?
  answer = ""
  loop do
    answer = gets.chomp
    if KEEP_PLAYING.include?(answer.downcase)
      break
    else
      prompt("Please enter 'y' or 'n'.")
    end
  end

  if answer.downcase == "n"
    return true
  end
end

system("clear") || system("cls")

greeting_message

deck = {}

loop do
  deck = {
    "Hearts" =>
    [{ "2" => 2, "3" => 3, "4" => 4, "5" => 5,
       "6" => 6, "7" => 7, "8" => 8, "9" => 9,
       "10" => 10, "Jack" => 10, "Queen" => 10, "King" => 10,
       "Ace" => 11 }],

    "Diamonds" =>
    [{ "2" => 2, "3" => 3, "4" => 4, "5" => 5,
       "6" => 6, "7" => 7, "8" => 8, "9" => 9,
       "10" => 10, "Jack" => 10, "Queen" => 10, "King" => 10,
       "Ace" => 11 }],

    "Clubs" =>
    [{ "2" => 2, "3" => 3, "4" => 4, "5" => 5,
       "6" => 6, "7" => 7, "8" => 8, "9" => 9,
       "10" => 10, "Jack" => 10, "Queen" => 10, "King" => 10,
       "Ace" => 11 }],

    "Spades" =>
    [{ "2" => 2, "3" => 3, "4" => 4, "5" => 5,
       "6" => 6, "7" => 7, "8" => 8, "9" => 9,
       "10" => 10, "Jack" => 10, "Queen" => 10, "King" => 10,
       "Ace" => 11 }]
  }

  score_header(scores)

  player_choice = ""

  clear_hands(player_hand, dealer_hand)

  initial_player_deal(deck, current_card, player_hand)

  puts ""

  initial_dealer_deal(deck, current_card, dealer_hand)

  ace_value!(player_hand, dealer_hand)
  ace_value!(player_hand, dealer_hand)

  loop do
    score_header(scores)

    prompt "You currently have #{player_hand.sum}"
    prompt "Dealer is showing #{dealer_hand[0]}"

    player_choice = hit_or_stay

    if player_choice == "hit"
      player_hand << deal_card!(deck, current_card)
      card_details(current_card)
      ace_value!(player_hand, dealer_hand)
      sleep 1
      prompt "You now have #{player_hand.sum}"
      sleep 1
    end

    break if player_choice == "stay" || busted?(player_hand, dealer_hand)
  end

  if player_choice == "stay"
    sleep 1

    loop do
      score_header(scores)
      prompt "You currently have #{player_hand.sum}"
      prompt "Dealer has #{dealer_hand.sum}"
      sleep 1

      break if dealer_hand.sum >= DEALER_STOP && dealer_hand.sum <= GAME_TYPE ||
               busted?(player_hand, dealer_hand) ||
               dealer_hand.sum > player_hand.sum

      dealer_hand << deal_card!(deck, current_card)
      card_details(current_card)
      ace_value!(player_hand, dealer_hand)

      sleep 1
      prompt "Dealer now has #{dealer_hand.sum}"
      sleep 1
    end

    if busted?(player_hand, dealer_hand)
      prompt "Busted!"
      prompt "Player wins!"
      update_scores(scores, "player")

    elsif dealer_hand.sum >= DEALER_STOP && dealer_hand.sum <= GAME_TYPE ||
          dealer_hand.sum > player_hand.sum
      prompt "Dealer has chosen to stay."
      sleep 1
    end

  elsif busted?(player_hand, dealer_hand)
    prompt "Busted!"
    prompt "Dealer wins!"
    update_scores(scores, "dealer")
  end

  declare_win_at_comparison!(player_hand, dealer_hand, scores)
  it_a_tie?(player_hand, dealer_hand)

  if grand_winner?(scores)
    prompt "We have a grand winner!"
    reset_scores(scores)
    prompt "Restart game? (y or n)"
  else
    prompt "Play another round? (y or n)"
  end

  break if play_again?
end

prompt "Thanks for playing #{GAME_TYPE}! Good bye!"
