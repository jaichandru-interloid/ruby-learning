def double_numbers(numbers)
  results = []

  numbers.each do |number|
    results << yield(number)
  end

  results
end