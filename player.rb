class Player
  attr_reader :points, :name

  def initialize(name)
    @name = name
    @points = 3
  end

  def lose_point
    @points = @points - 1
  end

end