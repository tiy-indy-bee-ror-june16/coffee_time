class Human
  attr_accessor :name,
                :alertness

  def initialize(name, alertness=0)
    self.name = name
    self.alertness = alertness
  end

  def has_coffee?
  end

  def needs_coffee?
    true
  end

  def buy(x)
  end

  def drink!
  end

end
