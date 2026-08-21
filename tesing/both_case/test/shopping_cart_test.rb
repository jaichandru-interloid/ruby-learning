# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/shopping_cart'

class ShoppingCartTest < Minitest::Test
  def setup
    @shopping=ShoppingCart.new
  end

  def test_add_item
    @shopping.add_item('Apple', 20, 5)
    @shopping.add_item('Orange', 15, 5)

    assert_equal 10, @shopping.item_count
    assert_equal 175, @shopping.total
  end

  def test_remove_item
    @shopping.add_item('Apple', 20, 5)
    @shopping.add_item('Orange', 15, 5)

    @shopping.remove_item('Apple')
    assert_equal 75,@shopping.total
  end

  def test_total
    @shopping.add_item('Apple', 20, 5)
    @shopping.add_item('Orange', 15, 5)

    assert_equal 175,@shopping.total
  end

  def test_zero_total
    assert_equal 0,@shopping.total
  end

  def test_edit
    @shopping.add_item('Apple', 20, 5)
    @shopping.add_item('Orange', 15, 5)

    @shopping.edit_data('Apple',3)

    assert_equal 8,@shopping.item_count
  end

  def test_edit_error
    @shopping.add_item('Apple',20,25)
    assert_raises(KeyError, 'Item:Not found') do
      @shopping.edit_data('Orange', 23)
    end
  end

  def test_empty
    assert @shopping.empty?

    @shopping.add_item('Apple',20,25)
    refute @shopping.empty?
  end
end
