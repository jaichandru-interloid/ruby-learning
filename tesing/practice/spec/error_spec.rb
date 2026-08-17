require "rspec"
require_relative "../lib/error"

RSpec.describe Bank do
  let(:bank) {Bank.new}

  describe "#error" do
    it "check the error" do
      expect{bank.withdraw(1500)}.to raise_error(RuntimeError,"Insufficient balance")
    end
  end
end