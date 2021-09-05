module ChocolateChip
  def chocotale_chip
    @name += 'チョコレートチップ'
  end
end

class Drink
  include ChocolateChip
  def initialize(text)
    @name = text
  end
  def name
    @name
  end
end

drink = Drink.new('モカ')
drink.chocotale_chip
puts drink.name
