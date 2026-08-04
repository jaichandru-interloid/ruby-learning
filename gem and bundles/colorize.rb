require "colorize"

puts "Hello ruby".colorize(:red)
puts "Love coding".colorize(:magenta)
puts "This is light blue with red background".colorize(:color => :light_blue, :background => :red)