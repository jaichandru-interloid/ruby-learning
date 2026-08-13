require "minitest/autorun"
require_relative "../lib/aaa"

class AssertActArrange < Minitest::Test
  def setup
    @user = User.new("John")
  end

  def test_greet
    result = @user.greeting

    assert_equal "Hello John", result
  end
end