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

class Espresso
  attr_accessor :name, :caffeine, :volume

  def initialize(name)
    @name = name
    @caffeine = 0.4
    @volume = 1
  end

  def full?
    if self.volume == 1
      true
    elsif self.volume < 1
      false
    end
  end

  def empty?
    if self.volume == 0
      true
    else
      false
    end
  end
end

class Tea
  attr_accessor :name, :caffeine, :volume

  def initialize(name)
    @name = name
    @caffeine = 0.25
    @volume = 4
  end

  def full?
    if self.volume == 4
      true
    elsif self.volume < 4
      false
    end
  end

  def empty?
    if self.volume == 0
      true
    else
      false
    end
  end
end
