# engine.rb

class Engine
  attr_reader :power

  def initialize
    @power = 0
  end

  def power=(score)
    @power = score if (0..100).include?(score)
  end
end
