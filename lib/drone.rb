# drone.rb
require_relative 'engine'
require_relative 'gyroscope'

class Drone

  attr_reader :status
  attr_reader :engines
  attr_reader :gyroscope

  STATUSES = ["off", "hovering", "moving"]

  def initialize(engines: 4)
    @status    = "off"
    @gyroscope = Gyroscope.new
    add_engines(engines)
  end

  def add_engines(total_engines)
    total_engines.times do
      engines << Engine.new
    end
  end

  def engines
    @engines ||= []
  end

  def status=(status)
    @status = status if STATUSES.include?(status)
  end
end
