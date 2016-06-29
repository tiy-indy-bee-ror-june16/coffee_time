require 'minitest/autorun'

require './human'
require './coffee'
require './tea'
require './espresso'

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
    harold = Human.new "Harold"
    shot = Espresso.new "Single Espresso"
    assert shot.full?

    harold.buy shot
    harold.drink!
    assert harold.alertness > 0.39
    refute shot.full?
    assert shot.empty?
  end

  def test_humans_can_drink_tea
    julie = Human.new "Julie"
    blackt = Tea.new "Earl Grey"
    assert blackt.full?

    julie.buy blackt
    julie.drink!
    assert(julie.alertness.between?(0.2, 0.29))
    refute blackt.full?
    refute blackt.empty?
  end

end
