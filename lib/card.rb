
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
    return "#{value} of #{suit.to_s}"
  end

end
