require './lib/ingredient'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

class IngredientTest < Minitest::Test
  def test_instance
    cheese = Ingredient.new("Cheese", "oz", 50)
    assert_instance_of Ingredient, cheese
  end

  def test_name
    cheese = Ingredient.new("Cheese", "oz", 50)
    assert_equal "Cheese", cheese.name
  end

  def test_unit
    cheese = Ingredient.new("Cheese", "oz", 50)
    assert_equal "oz", cheese.unit
  end

  def test_calories
    cheese = Ingredient.new("Cheese", "oz", 50)
    assert_equal 50, cheese.calories
  end
end
