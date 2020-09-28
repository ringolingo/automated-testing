require_relative 'test_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      # for example:  "2 of diamonds"
      card1 = "2 of diamonds"
      card2 = "6 of clubs"
      card3 = "9 of hearts"
      card4 = "10 of spades"

      expect(Card.new(2, :diamonds).to_s).must_equal card1
      expect(Card.new(6, :clubs).to_s).must_equal card2
      expect(Card.new(9, :hearts).to_s).must_equal card3
      expect(Card.new(10, :spades).to_s).must_equal card4
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # Test to ensure that to_s works for cards values 1, and 11-13
      # For example: "Queen of hearts"
      card1 = "Ace of spades"
      card11 = "Jack of hearts"
      card12 = "Queen of diamonds"
      card13 = "King of clubs"

      expect(Card.new(1, :spades).to_s).must_equal card1
      expect(Card.new(11, :hearts).to_s).must_equal card11
      expect(Card.new(12, :diamonds).to_s).must_equal card12
      expect(Card.new(13, :clubs).to_s).must_equal card13
    end
  end

  describe "Reader methods" do

    it "Can retrieve the value of the card using a `.value`." do
      # ensure that `.value works as expected`
    end

    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`

    end
  end

end
