require 'pry'
class Recipe
  attr_reader :name, :ingredients_required, :ingredients
  def initialize(name)
    @name = name
    @ingredients_required = {}
    @ingredients = []
    @total_calories = []
  end

  def add_ingredient(name, quantity)
    @total_calories << name.calories * quantity
    @ingredients << name

    @ingredients_required[name] = quantity
  end
  def amount_required(name)
    @ingredients_required[name]
  end

  def total_calories
    total = @total_calories.inject{|x, y| x + y}
    return total

  end
end
