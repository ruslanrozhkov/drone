# drone.rb
require_relative 'engine'

class Drone

  attr_reader :engines

  def initialize(engines: 4)
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
end
