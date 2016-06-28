require './beverage'
class Coffee < Beverage
  attr_accessor  :name, :sips_initial, :sips_left, :power

  def initialize(name, sips_initial=3.0)
    super
    self.power = 0.31
  end
end
