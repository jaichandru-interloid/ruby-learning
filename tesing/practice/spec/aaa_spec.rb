require "rspec"
require_relative "../lib/aaa"

RSpec.describe User do
  describe "arrange and act" do 
    it "arrange and act" do
      user = User.new("John")
      result=user.greeting
      expect(result).to eq("Hello John")
    end
  end
end