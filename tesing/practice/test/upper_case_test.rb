require "minitest/autorun"
require_relative "../lib/upper_case"

class UpperCase<Minitest::Test
  def setup
    @helper=StringHelper.new
  end

  def test_conversion
    text="hii john"
    assert_equal "HII JOHN", @helper.uppercase(text)
  end
end