require 'benchmark'

time = Benchmark.measure do
  1_000_000.times { 2 + 2 }
end

puts time