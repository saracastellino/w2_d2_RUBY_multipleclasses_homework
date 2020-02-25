require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use!
MiniTest::Reporters::SpecReporter.new

require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < Minitest::Test

  def setup
    @river1 = River.new("Amazon", 1000)
  end

end
