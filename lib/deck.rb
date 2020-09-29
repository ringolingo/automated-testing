
# deck.rb

require_relative 'card'

class Deck

  attr_reader :cards

  def initialize
    @cards = []

    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        @cards << Card.new(value, suit)
      end
    end
  end

  def draw
    raise ArgumentError.new("you cannot draw when the deck is empty") if @cards.length == 0
    return @cards.shift
  end

  def shuffle
    return @cards.shuffle!
  end

  def count
    return @cards.length
  end
end

