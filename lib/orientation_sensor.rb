# orientation_sensor.rb

class OrientationSensor

  attr_reader :pitch, :roll

  def initialize(gyroscope)
    @vectors = gyroscope.vectors
    @pitch   = vectors.fetch(:x)
    @roll    = vectors.fetch(:y)

    gyroscope.add_observer(self)
  end

  def update(time, vectors)
    @pitch = vectors.fetch(:x)
    @roll  = vectors.fetch(:y)
  end

  def vectors
    @vectors
  end
end
