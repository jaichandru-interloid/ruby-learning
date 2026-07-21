def time_it
    start_time = Time.now
    yield
    elapsed = Time.now - start_time
    puts "Elapsed time: #{elapsed} seconds"
end
time_it{puts"Hii"}