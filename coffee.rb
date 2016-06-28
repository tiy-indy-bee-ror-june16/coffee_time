require './beverage'
class Coffee < Beverage
  attr_accessor  :name, :sips_initial, :sips_left, :power

  def initialize(name, sips_initial=3.0)
    self.name = name
    self.sips_initial = sips_initial
    self.sips_left = sips_initial
    self.power = 0.31
  end
end

tsmf = Coffee.new "Triple Shot Mocha Frappuccino"
puts tsmf.inspect
