require 'minitest/autorun'

require './human'
require './coffee'

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

  def test_humans_can_drink_espresso
    liz = Human.new "Liz"
    ses = Espresso.new "Solo Espresso Shot"
    liz.buy ses
    liz.drink!
    assert liz.alertness >= 0.4
    assert ses.empty?
    refute ses.full?
  end

  def test_humans_can_drink_tea
    kayla = Human.new "Kayla"
    tea = Tea.new "English Breakfast Tea"
    kayla.buy tea
    4.times { kayla.drink! }
    kayla.buy tea
    assert tea.empty?
    2.times { kayla.drink! }
    refute tea.full?
    refute tea.empty?
    assert kayla.alertness > 1.0
  end

end
