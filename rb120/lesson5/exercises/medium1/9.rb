require "pry"

class Deck
  attr_reader :deck

  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    generate_deck
    shuffle
  end

  def draw
    @deck.pop
  end

  private
  
  def shuffle
    @deck.shuffle!
  end

  def generate_deck
    # SUITS.each do |suit|
    #   RANKS.each do |rank|
    #     @deck << [Card.new(rank, suit)]
      # end
    # end
    @deck = RANKS.product(SUITS).map do |rank, suit|
      Card.new(rank, suit)
    end
  end
end

class Card
  include Comparable

  VALUES = { 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def <=>(other)
    binding.pry
    value <=> other.value
  end

  def value
    VALUES.fetch(rank, rank)
  end

  def to_s
    "#{rank} of #{suit}"
  end
end

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
drawn.count { |card| card.rank == 5 } == 4
drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
drawn != drawn2 # Almost always.
