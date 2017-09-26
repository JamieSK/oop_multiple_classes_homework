# Bear class
class Bear
  attr_reader :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end

  def fish!(river)
    @stomach << river.remove_fish!
  end

  def roar
    'Hi I\'m Winnie the Pooh'
  end

  def food_count
    @stomach.length
  end
end
