require "rspec"
require_relative "../lib/matchers"

RSpec.describe EqualityDemo do
  let(:demo) do
    EqualityDemo.new
  end

  describe "#equal" do
    context "Check the equal numbers" do
      it "check the numbers are equal" do
        expect(demo.number).to eq(demo.another_number)
      end
    end

    context "check the string" do
      it "Checks the strings are same or not" do
        expect(demo.string).to eq(demo.another_string)
      end
    end
  end

  describe "eql" do
    it "checks value equality using eql?" do
      expect(demo.number).to eql(10)
      expect(demo.another_number).to eql(10)

      expect(demo.string).to eql("hello")
      expect(demo.another_string).to eql("hello")
    end
  end
end