class Bear

attr_accessor :name, :type, :stomach

  def initialize(name, type, stomach)
    @name = name
    @type = type
    @stomach = [ ]
  end
  #
  def put_fish_in_the_stomach(fish, bear)
    @stomach.push(fish)
    fishes.remove_fish
  end

end
