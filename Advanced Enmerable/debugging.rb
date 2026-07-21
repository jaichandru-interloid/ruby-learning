# doubled=[1,2,3].each{|n| n*2}
# p doubled

doubled=[1,2,3].map{|n| n*2}
p doubled

#switch the each to map
p"___________________________________________________________________________"


# total=[1,2,3,4,5].map{|s,n| s+n}
# p total

total=[1,2,3,4,5].sum
p total
p"___________________________________________________________________________"

# evens=(1..10).select{|n| n%2}
# p evens

evens=(1..10).select{|n| n.even?}
p evens
p"___________________________________________________________________________"

# names.sort{|a,b| a.length}

names.sort