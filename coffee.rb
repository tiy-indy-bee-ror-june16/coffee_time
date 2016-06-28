require './human'

class Coffee
  attr_accessor :name, :caffeine, :volume

  def initialize(name)
    @name = name
    @caffeine = 0.32
    @volume = 3
  end

  def full?
    if self.volume == 3
      true
    elsif self.volume < 3
      false
    end
  end

  def empty?
    if self.volume > 0
      false
    else
      true
    end
  end

end
