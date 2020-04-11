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







end # is of Test Class.
