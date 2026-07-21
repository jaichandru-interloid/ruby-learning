str="This is the simplest and most idiomatic Ruby solution"
words=str.split(" ")
length=words.each_with_object({}) do |w,h|
    h[w]=w.length
end
puts length