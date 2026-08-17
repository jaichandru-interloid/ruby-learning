# frozen_string_literal: true

require 'minitest/autorun'

class StringTest < Minitest::Test
  def setup
    @message = 'Welcome to Ruby'
  end

  def test_include
    assert_includes @message, 'to'
  end

  def test_match
    assert_match(/Ruby/, @message)
  end

  def test_start_with
    assert @message.start_with?('Welcome')
  end

  def test_end_with
    assert @message.end_with?('Ruby')
  end
end
