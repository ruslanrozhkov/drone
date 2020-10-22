# gyroscope.rb

require 'observer'

class Gyroscope

  include Observable

  attr_reader :x, :y, :z

  def initialize
    @x, @y, @z = 0, 0, 0
  end

  def vectors
    {x: @x, y: @y, z: @z}
  end

  def x=(x)
    return if @x == x

    @x = x
    changed
    notify_observers(Time.now, vectors)
  end

  def y=(y)
    return if @y == y

    @y = y
    changed
    notify_observers(Time.now, vectors)
  end

end
