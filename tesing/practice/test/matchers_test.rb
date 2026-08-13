# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/matchers'

class MatchersTest < Minitest::Test
  def setup
    @demo = EqualityDemo.new
  end

  def test_number
    assert_equal 10, @demo.number
  end

  def test_another_number
    assert_equal @demo.number, @demo.another_number
  end

  def test_string_equal
    assert_equal @demo.string,@demo.another_string
  end

  def test_string_same
    refute_same @demo.string, @demo.another_string
  end

  def test_true_value
    assert_same true, @demo.true_value
  end
end
