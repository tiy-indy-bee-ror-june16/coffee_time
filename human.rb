require './coffee'

class Human
  attr_accessor :name,
                :alertness,
                :my_drink

  def initialize(name, alertness=0)
    self.name = name
    self.alertness = alertness
  end

  def has_coffee?
    if self.my_drink
      true
    else
      false
    end
  end

  def needs_coffee?
    if alertness < 0.1
      true
    end
  end

  def buy(drink)
    self.my_drink = drink
  end

  def drink!
    self.alertness += self.my_drink.caffeine
    self.my_drink.volume -= 1
  end


end
