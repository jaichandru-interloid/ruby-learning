require "rspec"
require_relative "../lib/question1"

RSpec.describe "SpecYield" do
  describe "#practice" do 
    it "verifying the yield value is Alice or not" do
      expect{|block| 
            greet(&block).to yield_with_args("Alice")}
    end
  end
end