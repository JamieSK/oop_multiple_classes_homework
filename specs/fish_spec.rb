require 'minitest/autorun'
require 'minitest/rg'

require_relative '../fish'

# Tests fish class.
class TestFish < MiniTest::Test
  def setup
    @fish = Fish.new('Jaws')
  end
end
