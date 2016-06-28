require './beverage'

class Expresso < Beverage
  def initialize(name, sips_initial=1.0)
    self.name = name
    self.sips_initial = sips_initial
    self.sips_left = sips_initial
    self.power = 0.4
  end
end

expr = Expresso.new("Expresso")
puts expr.inspect
puts expr.empty?
