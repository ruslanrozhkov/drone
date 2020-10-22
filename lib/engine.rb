# engine.rb

class Engine

  attr_reader :power
  attr_reader :status

  STATUSES = ["on", "off"]

  def initialize
    @power  = 0
    @status = "off"
  end

  def power=(score)
    @power = score if (0..100).include?(score)
  end

  def status=(status)
    @status = status if STATUSES.include?(status)
  end
end
