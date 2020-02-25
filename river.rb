require('pry')

class River

  attr_reader :name, :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def number_of_fishes()
    return @fishes.length
  end

  def add_fish(fish)
    @fishes.push(fish)
  end

  def remove_fish
    @fishes.pop
  end

#
#
# def pick_from_stop(bear)
#     bear.stomach.each {|fish| add_fish(fish)}
#     bear.clear_the_queue
#
#   end

end
