require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use!
MiniTest::Reporters::SpecReporter.new

require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < Minitest::Test

  def setup
    @bear1 = Bear.new("Teddy", "Grizzly", [@fish1])
  end

  def get_name
    assert_equal("Teddy", @bear1.name)
  end

  def test_fish_in_the_stomach
    @bear1.fish_in_the_stomach(@fish1)
    assert_equal(1, @bear1.stomach.length)
  end


end
