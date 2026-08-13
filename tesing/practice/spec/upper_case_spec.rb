require "rspec"
require_relative "../lib/upper_case"

RSpec.describe StringHelper do
  let(:helper) do
    StringHelper.new
  end

  describe "#uppercase" do
    it "convert the case of the string" do
      expect(helper.uppercase("hii john")).to eq("HII JOHN")
    end
  end
end