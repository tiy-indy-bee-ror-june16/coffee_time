require './beverage'

class Tea < Beverage
  def initialize(name, sips_initial=10.0)
    super
    self.power = 0.25
  end
end
