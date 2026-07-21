str="This is the simplest and most idiomatic Ruby solution".downcase
words=str.split(" ")
counted={}
words.each do|i|
    if !counted.include?(i)
        counted[i]=words.count{|a| a==i}
    end
end
p counted