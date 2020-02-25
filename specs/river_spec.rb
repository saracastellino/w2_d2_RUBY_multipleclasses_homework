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
 def test_add_fish(fish)
   @river1.add_fish(@fish2)
   assert_equal(2, @river1.fishes.length)
 end
 binding.pry

 def test_remove_fish
   @river1.remove_fish
   assert_equal(0, @river1.fishes.length)
 end
  #
  # def test_fish_caught
  #   # add fish
  #   # remove fish
  # end

end

# def test_pick_from_stop()
#    @bus_stop1.add_person_to_queue(@person1)
#    @bus_stop1.add_person_to_queue(@person1)
#    @bus_stop1.add_person_to_queue(@person1)
#    @bus_stop1.add_person_to_queue(@person1)
#    @bus_22.pick_from_stop(@bus_stop1)
#    assert_equal(4, @bus_22.number_of_passengers)
#    assert_equal(0, @bus_stop1.queue_length)
#  end
