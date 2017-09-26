# River class.
class River
  attr_reader :fish

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def remove_fish!
    @fish.shift
  end

  def fish_count
    @fish.length
  end
end
