class Human
  attr_accessor :name,
                :alertness,
                :drinkcount,
                :drink

  def initialize(name, alertness=0)
    self.name = name
    self.alertness = alertness
    @drink = 0
    @drinkcount = 0
  end

  def has_coffee?
    if @drinkcount > 1
      true
    else
      false
    end

  end

  def needs_coffee?
    if drinkcount < 1
      true
    else
      false
    end
  end

  def buy(drink)
    @drink = drink
    @drinkcount = @drinkcount + 1
  end

  def drink!
    @drink.havedrink
    @alertness = @drink.caffeine + @alertness
    if drink.sips == 0
      @drinkcount = 0
    end
  end


end
