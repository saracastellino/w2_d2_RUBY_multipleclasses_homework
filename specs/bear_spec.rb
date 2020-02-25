require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use!
MiniTest::Reporters::SpecReporter.new

require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < Minitest::Test

  def setup
    @bear1 = Bear.new("Teddy", "Grizzly", [ ])
  end

  def test_get_name
    assert_equal("Teddy", @bear1.name)
  end

  def test_put_fish_in_the_stomach
    @bear1.put_fish_in_the_stomach(@fish1)
    assert_equal(1, @bear1.stomach.length)
  end

  def test_fish_caught
    @river1.fish_caught("Gilmour", @bear1)
    assert_equal(0, @river1.fishes.length)
    assert_equal(1, @bear1.stomach.length)
  end

end
