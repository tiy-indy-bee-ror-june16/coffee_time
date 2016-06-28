require './beverage'

class Tea < Beverage
  def initialize(name, sips_initial=10.0)
    self.name = name
    self.sips_initial = sips_initial
    self.sips_left = sips_initial
    self.power = 0.25
  end
end

tea = Tea.new("tea")
puts tea.full?
