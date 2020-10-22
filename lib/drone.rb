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

  def take_off
    start_engines
    stabilize
  end

  def stabilize
    engines.each { |engine| engine.power = 50 }
    @status = "hovering"
  end

  def land
    stabilize
    reduce_speed
    stop_engines
    @status = "off"
  end

  private

  def reduce_speed
    threads = []

    engines.each do |engine|
      threads << Thread.new { engine.power.times { |_| engine.power -= 1 } }
    end

    threads.each { |thread| thread.join }
  end

  def start_engines
    engines.each { |engine| engine.status = "on" }
  end

  def stop_engines
    engines.each { |engine| engine.status = "off" }
  end
end
