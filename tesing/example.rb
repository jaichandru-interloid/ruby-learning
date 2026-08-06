class Calculator
  def divide(a, b)
    return "Cannot divide by zero" if b == 0

    a / b
  end
end

RSpec.describe Calculator do
  let(:calc) { Calculator.new }

  context "when divisor is not zero" do
    it "returns the quotient" do
      expect(calc.divide(10, 2)).to eq(5)
    end
  end

  context "when divisor is zero" do
    it "returns an error message" do
      expect(calc.divide(10, 0)).to eq("Cannot divide by zero")
    end
  end
end