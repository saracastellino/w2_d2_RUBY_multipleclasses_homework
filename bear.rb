class Bear

attr_reader :name, :type, :stomach

  def initialize(name, type, stomach)
    @name = name
    @type = type
    @stomach = [ ]
  end
  #
  def fish_in_the_stomach(fish)
    @stomach.push(fish)
  end




end
