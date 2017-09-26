require 'minitest/autorun'
require 'minitest/rg'

require_relative '../fish'
require_relative '../river'
require_relative '../bear'

# Tests bear class.
class TestBear < MiniTest::Test
  def setup
    @fish1 = Fish.new('Jaws')
    @fish2 = Fish.new('Free Willy')

    @river = River.new('Ganges', [@fish1, @fish2])

    @bear = Bear.new('Pooh')
  end

  def test_going_fishing
    @bear.fish!(@river)
    assert_equal(@river.fish, [@fish2])
    assert_equal(@bear.stomach, [@fish1])
  end

  def test_hear_me_roar
    assert_equal('Hi I\'m Winnie the Pooh', @bear.roar)
  end

  def test_count_food
    @bear.fish!(@river)
    assert_equal(1, @bear.food_count)
  end
end
