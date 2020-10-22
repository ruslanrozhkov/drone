# gyroscope.rb

class Gyroscope

  attr_accessor :x, :y, :z

  def initialize
    @x, @y, @z = 0, 0, 0
  end

  def vectors
    [@x, @y, @z]
  end

end
