# frozen_string_literal: true

require 'minitest/autorun'

class NilTest < Minitest::Test
  def test_nil
    value = nil
    assert_nil(value)
  end

  def test_not_nil
    value = 'John'
    refute_nil(value)
  end
end
