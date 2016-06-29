class Tea

  attr_accessor :type, :sips, :caffeine

  def initialize(type)
    self.type = type
    @sips = 2
    @caffeine = 0.25
  end

  def full?
    if @sips == 2
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
