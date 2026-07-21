str="This is the simplest and most idiomatic Ruby solution"
words=str.split(" ")
long=words.select{|i| i.length>5}
puts long