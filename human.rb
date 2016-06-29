class Human
  attr_accessor :name,
                :alertness,
                :cup

  def initialize(name, alertness=0)
    self.name = name
    self.alertness = alertness
  end

  def has_coffee?
    cup && !cup.empty?
  end

  def needs_coffee?
    !has_coffee?
  end

  def buy(beverage)
    self.cup = beverage
  end

  def drink!
    self.alertness += cup.power
    self.cup.drink
  end




end
