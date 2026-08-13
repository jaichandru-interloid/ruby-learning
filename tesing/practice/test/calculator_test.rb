# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/calculator'

class CalculatorTest < Minitest::Test
  def setup
    @calc = Calculator.new
  end

  def test_add
    assert_equal 5, @calc.add(2, 3)
  end

  def test_subract
    assert_equal 5, @calc.subract(15, 10)
  end

  def test_product
    assert_equal 0, @calc.product(15, 0)
  end

  def test_divide
    assert_equal 5, @calc.divide(10, 2)
  end
end
