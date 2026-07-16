def sorting(movies)
    return movies.sort
end

movies=[]
puts"Enter your 5 favourite movies:"
5.times do |i|
    movies[i]=gets.chomp
end
puts"Your Favourite movies are:"
puts movies
puts"sorted list :"
puts sorting(movies)
