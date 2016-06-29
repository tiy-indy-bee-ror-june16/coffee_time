class Coffee

  attr_accessor :name, :gulps, :power

  def initialize(name)
    @name = name
    @gulps = 3
    @power = 0.31
  end

  def full?
    gulps == 3
  end

  def empty?
    gulps == 0
  end

  def drink
    self.gulps -= 1 unless empty?
  end

end
