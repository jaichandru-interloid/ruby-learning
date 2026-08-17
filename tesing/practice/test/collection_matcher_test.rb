# frozen_string_literal: true

require 'minitest/autorun'

class MatcherTest < Minitest::Test
  def setup
    @numbers = [1, 2, 3, 4, 5]
  end

  def test_include
    assert_includes @numbers, 3
  end

  def test_exact
    assert_equal [5, 2, 3, 4, 1].sort, @numbers.sort
  end

  def test_numbers_all
    assert(@numbers.all?(&:positive?))
  end
end
