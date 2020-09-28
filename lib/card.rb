
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)

    unless (1..13).include?(value)
      raise ArgumentError.new("improper card value: #{value}")
    end

    unless [:diamonds, :hearts, :spades, :clubs].include?(suit)
      raise ArgumentError.new("improper card suit: #{suit}")
    end

    @value = value
    @suit = suit

  end

  def to_s
    case value
    when (2..10)
      return "#{value} of #{suit.to_s}"
    when 1
      return "Ace of #{suit.to_s}"
    when 11
      return "Jack of #{suit.to_s}"
    when 12
      return "Queen of #{suit.to_s}"
    when 13
      return "King of #{suit.to_s}"
    end
  end

end
