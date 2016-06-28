require './coffee'
require './expresso'

class Human
  attr_accessor :name,
                :alertness,
                # :has_coffee,
                # :needs_coffee,
                :my_coffee

  def initialize(name, alertness=0)
    self.name = name
    self.alertness = alertness
    # self.has_coffee = false
    # self.needs_coffee = true
  end

  def has_coffee?
    if my_coffee != nil
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
