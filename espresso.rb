class Espresso

  attr_accessor :type, :sips, :caffeine

  def initialize(type)
    self.type = type
    @sips = 1
    @caffeine = 0.4
  end

  def full?
    if @sips == 1
      true
    else
      false
    end
  end

  def empty?
    if @sips == 0
      true
    else
      false
    end
  end

  def havedrink
    @sips = @sips - 1
  end
end
