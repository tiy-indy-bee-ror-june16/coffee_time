class Beverage
  attr_accessor  :name, :sips_initial, :sips_left, :power

  def initialize(name, sips_initial=0.0)
    self.name = name
    self.sips_initial = sips_initial
    self.sips_left = sips_initial
    self.power = 0.0
  end

  def full?
    if sips_initial - sips_left == 0
        true
    else
        false
    end
  end

  def empty?
    if sips_initial - sips_left == sips_initial
      true
    else
      false
    end
  end

  def sips_left= (x)
    @sips_left = x
  end

end
