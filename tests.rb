require 'minitest/autorun'

require './human'
require './coffee'

class CaffeineTest < MiniTest::Test
  def test_humans_tend_to_be_sleepy
    tyler = Human.new "Tyler"
    assert tyler.alertness < 0.1 # new human, alertness is less than 0.1
  end

  def test_humans_need_coffee
    randy = Human.new "Randy"
    refute randy.has_coffee? # fails if Randy has a coffee
    assert randy.needs_coffee? # passes if Randy does not have a coffee and alertness is 0
  end

  def test_humans_can_drink_coffee
    sherri = Human.new "Sherri"
    tsmf = Coffee.new "Triple Shot Mocha Frappuccino"
    assert tsmf.full? # Sherri has a full coffee

    sherri.buy tsmf # Sherri buys a coffee
    sherri.drink! # Sherri drinks a coffee
    assert(sherri.alertness.between?(0.1, 0.33)) # Alertness increases - test has to be inbetween 0.1 and 0.33
    refute tsmf.full? # fails if completely full - but Sherri has taken a drink, so how much does she drink?
    refute tsmf.empty? # fails if empty - how close to empty is drink?
  end

  def test_humans_can_drink_all_the_coffee
    trevor = Human.new "Trevor"
    tsmf = Coffee.new "Triple Shot Mocha Frappuccino"
    trevor.buy tsmf # Trevor buys a coffee (presume it is full)

    3.times { trevor.drink! } # It takes Trevor 3 drinks to finish the coffee
    assert tsmf.empty? # coffee is now empty
    assert trevor.alertness > 0.9 # alertness is now at max for drink, setting max alertness to 1
  end

  def test_humans_can_drink_all_the_espresso # Same test for Espresso
    crystal = Human.new "Crystal"
    espr = Coffee.new "Espresso"
    crystal.buy espr

    1.times { crystal.drink! }
    assert espr.empty?
    assert crystal.alertness == 0.4
  end

end
