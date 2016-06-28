require './coffee'
require './expresso'
require './tea'

class Human
  attr_accessor :name,
                :alertness,
                :my_coffee

  def initialize(name, alertness=0)
    self.name = name
    self.alertness = alertness
  end

  def has_coffee?
    if my_coffee
      true
    else
      false
    end
  end

  def needs_coffee?
    if self.alertness < 1.0
      true
    else
      false
    end
  end

  def buy(bought_coffee)
    self.my_coffee = bought_coffee
  end

  def drink!
    if self.my_coffee.sips_left > 0.0
      self.alertness += self.my_coffee.power
      self.my_coffee.sips_left = self.my_coffee.sips_left - 1.0
    else
      puts 'Sorry! your coffee is empty! Maybe you should buy more.'
    end
  end

end
