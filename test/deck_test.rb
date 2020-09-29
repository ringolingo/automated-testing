require_relative 'test_helper'

describe Deck do
  describe "You can create a deck" do
    our_deck = Deck.new

    it "can be created" do
      expect(our_deck).must_be_instance_of Deck
    end

    it "is created with 52 card objects" do
      expect(our_deck.cards).must_be_instance_of Array
      expect(our_deck.cards.length).must_equal 52
      expect(our_deck.cards[0]).must_be_instance_of Card
    end
  end

  describe "you can shuffle the deck" do
    # the method exists and can be called
    it "has a method you can call with .shuffle" do
      our_deck = Deck.new
      our_deck.shuffle

      expect(our_deck).must_be_instance_of Deck
    end
  end

  describe "you can draw a card" do
    draw_deck = Deck.new

    it "returns an instance of Card when you draw" do
      drawn_card = draw_deck.draw
      expect(drawn_card).must_be_instance_of Card
    end

    it "decreases number of cards in deck when you draw" do
      start_count = draw_deck.count
      draw_deck.draw
      new_count = draw_deck.count

      expect(start_count - new_count).must_equal 1
    end

    it "it raises an error if the deck is out of cards" do
      brand_new_deck = Deck.new
      52.times { brand_new_deck.draw }

      expect { brand_new_deck.draw }.must_raise ArgumentError
    end
  end

  describe "you can check how many cards are left" do

    it "appropriately returns count of 52, 49, 16, 2" do
      count_deck = Deck.new
      fifty_two = count_deck.count

      3.times { count_deck.draw }
      forty_nine = count_deck.count

      33.times { count_deck.draw }
      sixteen = count_deck.count

      14.times { count_deck.draw }
      two = count_deck.count

      expect(fifty_two).must_equal 52
      expect(forty_nine).must_equal 49
      expect(sixteen).must_equal 16
      expect(two).must_equal 2
    end

    it "returns zero when deck is out of cards" do
      new_deck = Deck.new
      52.times { new_deck.draw }
      expect(new_deck.count).must_equal 0
    end
  end
end
