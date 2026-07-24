class Bird; def fly; puts "flying"; end; end;

bird=Bird.new
puts bird.respond_to?(:fly)