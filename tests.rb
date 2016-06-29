require 'minitest/autorun'
require './beverage'
require './human'
require './coffee'
require './expresso'
require './tea'

class CaffeineTest < MiniTest::Test
  def test_humans_tend_to_be_sleepy
    tyler = Human.new "Tyler"
    assert tyler.alertness < 0.1
  end

  def test_humans_need_coffee
    randy = Human.new "Randy"
    refute randy.has_coffee?
    assert randy.needs_coffee?
  end

  def test_humans_can_drink_coffee
    sherri = Human.new "Sherri"
    tsmf = Coffee.new "Triple Shot Mocha Frappuccino"
    assert tsmf.full?

    sherri.buy tsmf
    sherri.drink!
    assert(sherri.alertness.between?(0.1, 0.33))
    refute tsmf.full?
    refute tsmf.empty?
  end

  def test_humans_can_drink_all_the_coffee
    trevor = Human.new "Trevor"
    tsmf = Coffee.new "Triple Shot Mocha Frappuccino"
    trevor.buy tsmf

    3.times { trevor.drink! }
    assert tsmf.empty?
    assert trevor.alertness > 0.9
  end

  def  test_expresso_num_sips
    trevor = Human.new "Trevor"
    expr = Expresso.new "Expresso"
    assert expr.sips_initial == 1.0
  end

  def test_expresso_power
    trevor = Human.new "Trevor"
    expr = Expresso.new "Expresso"
    trevor.buy expr
    trevor.drink!
    assert(trevor.alertness.between?(0.35, 0.45))
  end

  def test_tea
    trevor = Human.new "Trevor"
    tea1 = Tea.new "Tea"
    assert tea1.sips_initial > 5.0
    trevor.buy tea1
    5.times { trevor.drink! }
    refute tea1.empty?
    assert trevor.alertness > 1.0
  end
end
