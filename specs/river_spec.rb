require 'minitest/autorun'
require 'minitest/rg'

require_relative '../fish'
require_relative '../river'

# Tests river class.
class TestRiver < MiniTest::Test
  def setup
    @fish1 = Fish.new('Jaws')
    @fish2 = Fish.new('Free Willy')

    @river = River.new('Ganges', [@fish1, @fish2])
  end

  def test_remove_fish
    assert_equal(@fish1, @river.remove_fish!)
  end

  def test_count_fish
    assert_equal(2, @river.fish_count)
  end
end
