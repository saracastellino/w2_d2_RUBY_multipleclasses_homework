require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use!
MiniTest::Reporters::SpecReporter.new

require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < Minitest::Test

  def setup
    @river1 = River.new("Amazon", [@fish1])
  end

  def test_number_of_fishes
   assert_equal(1, @river1.fishes.length)
 end
 #
 def test_remove_fish
   @river1.remove_fish
   assert_equal(0, @river1.fishes.length)
 end

end
