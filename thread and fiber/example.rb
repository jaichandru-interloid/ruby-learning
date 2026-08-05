# thread = Thread.new do
#   puts "Thread started"
#   sleep 2
#   puts "Thread finished"
# end

# puts "Waiting for thread..."
# thread.join
# puts "Main thread continues"

# threads = []

# 3.times do |i|
#   threads << Thread.new do
#     sleep rand(1..3)
#     puts "Thread #{i} done"
#   end
# end

# threads.each(&:join)

# puts "All threads are finished!"

# t = Thread.new do
#   sleep 3
#   puts "Done"
# end

# puts "Waiting..."

# t.join

# puts "Finished"


t1 = Thread.new do 
  5.times do|i|
    puts "A"
    # p i
    sleep 1
  end
end

t2 = Thread.new do 
  5.times do |j|
    puts "B"
    # p j
    sleep 1
  end
end

t1.join
t2.join