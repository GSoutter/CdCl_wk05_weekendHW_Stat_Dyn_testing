require("minitest/autorun")
require('minitest/reporters')

require_relative("../card_game.rb")
require_relative("../card.rb")


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class CustomerTest < MiniTest::Test

  def setup()
    @card1 = Card.new("heart", 1)
    @card2 = Card.new("heart", 4)
    @card3 = Card.new("club", 11)
    @cards = [@card1, @card2, @card3]
  end

  def test_CardGame_checkforAce__ace()
    #given a card object that is an ace
    #when i use the check for ace method
    #then returns true
    assert_equal(true, CardGame.check_for_ace(@card1))
  end

  def test_CardGame_checkforAce__4()
    #given a card object that is not an ace
    #when i use the check for ace method
    #then returns false
    assert_equal(false, CardGame.check_for_ace(@card2))
  end

  def test_CardGame_highest_card__1stCard()
    #given 2 card objects
    #when run with highest_card method
    #card2 is returned.
    assert_equal(@card2, CardGame.highest_card(@card2, @card1))
  end

  def test_CardGame_highest_card__2ndCard()
    #given 2 card objects
    #when run with highest_card method
    #card3 is returned.
    assert_equal(@card3, CardGame.highest_card(@card2, @card3))
  end

  def test_CardGame_highest_card__equal()
    #given 2 card objects
    #when run with highest_card method
    #nil is returned.
    assert_equal(false, CardGame.highest_card(@card1, @card1))
  end

  def test_cardGame_cards_total_value()
    #given an array of card objects
    #when run cards_total method
    #Total of 16 is returned
    assert_equal("You have a total of 16", CardGame.cards_total_value(@cards))
  end







end # is of Test Class.
