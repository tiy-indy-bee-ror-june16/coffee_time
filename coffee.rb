class Coffee

  attr_accessor :type, :sips

  def initialize(type)
    self.type = type
    @sips = 0
    sipsetter
  end

  def sipsetter
    if type == "Espresso"
      @sips = 1
    else
      @sips = 3
    end
  end

  def full?
    if @type == "Espresso" && @sips == 1
      true
    elsif @sips == 3
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
