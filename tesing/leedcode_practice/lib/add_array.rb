# frozen_string_literal: true

def add_two_numbers(l1, l2)
  num1 = l1.reverse.join.to_i
  num2 = l2.reverse.join.to_i

  sum_val = num1 + num2
  return [0] if sum_val.zero?

  result = []
  while sum_val.positive?
    result << sum_val % 10

    sum_val /= 10
  end
  result
end
