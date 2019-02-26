require 'pry'

class Pantry
  attr_reader :stock
  def initialize
    @stock = {}
  end

  def stock_check(name)
    cheese
    binding.pry
  end

end
