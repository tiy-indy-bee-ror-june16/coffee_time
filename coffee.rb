class Coffee

  # coffee must have a type, gulps (to finish a cup), and a boost factor (caffeine)
  attr_accessor :type, :gulps, :boost, :max_gulps

  def initialize(type)
    self.type = type
    self.max_gulps = 3
    self.boost = 0.31
    if type == "Espresso" # I can get this to pass, but not create a cup of espresso
      self.max_gulps = 1
      self.boost = 0.4
    end
    self.gulps = self.max_gulps
  end

  # what happens when coffee is gulped
  def take_a_sip
    self.gulps -= 1
  end

  # full can be anywhere from 1 to 3 gulps, depending upon the gulps left and type of drink
  def full?
    self.gulps == self.max_gulps
  end

  # empty must be equal to zero (cannot have any half gulps left over)
  def empty?
    self.gulps == 0
  end

end
