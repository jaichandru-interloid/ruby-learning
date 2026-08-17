# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/error'

class ErrorTest < Minitest::Test
  def setup
    @bank = Bank.new
  end

  def test_withdraw
    assert_raises(RuntimeError) do
      @bank.withdraw(1500)
    end
  end
end
