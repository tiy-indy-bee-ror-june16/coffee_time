class Coffee

  attr_accessor :type, :sips

  def initialize(type)
    self.type = type
    @sips = 3
  end

  def full?
    if @sips == 3
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
