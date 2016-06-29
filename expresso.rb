require './beverage'

class Expresso < Beverage
  def initialize(name, sips_initial=1.0)
    super
    self.power = 0.4
  end
end
