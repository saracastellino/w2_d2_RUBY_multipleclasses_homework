require('minitest/autorun')
require('minitest/reporters')
MiniTest::Reporters.use!
MiniTest::Reporters::SpecReporter.new

require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish')

class FishTest

def setup
  @fish1 = Fish.new("Gilmour")

end

end
