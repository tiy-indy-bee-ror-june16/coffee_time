class Human # What do Humans have? A name, alertness and a drink!
  attr_accessor :name,
                :alertness,
                :drink

  def initialize(name, alertness=0)
    self.name = name
    self.alertness = alertness
    self.drink = drink
  end

  # If human has a coffee, then they have a drink and it is not empty
  def has_coffee?
    self.drink && !self.drink.empty?
  end

  # If human needs a coffee, then alertness must be zero
  def needs_coffee?
    self.alertness == 0
  end

  # Human purchases a coffee from the coffee class (I'm still fuzzy on this one)
  def buy(x)
    self.drink = x
  end

  # What is a drink? It means that human has a coffee, takes a sip (up to 3) and it boosts alertness!
  # Because drink is now equal to x, coffee parameters now apply
  def drink!
    if self.has_coffee?
      self.drink.take_a_sip
      self.alertness += self.drink.boost
    end
  end

end
