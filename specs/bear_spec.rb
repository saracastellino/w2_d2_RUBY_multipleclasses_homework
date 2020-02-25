require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use!
MiniTest::Reporters::SpecReporter.new

require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < Minitest::Test

  def setup
    @bear1 = Bear.new("Teddy", "Grizzly")

  end

end
