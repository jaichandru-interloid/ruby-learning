class Calculator
  def divide(a, b)
    raise ArgumentError, "Cannot divide by zero" if b == 0
    a/b
  end
end
