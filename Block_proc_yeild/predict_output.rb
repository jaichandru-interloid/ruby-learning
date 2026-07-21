p=proc{|a,b| puts"#{a}-#{b}"}
p.call(1)
# output 1-

l=->(x){x*2}
l.call(3,4)
# #Error

def m; yield 5;end
m{|n| puts n*n}
# #output : 25

p [1,2,3].map(&:to_s)
#output: ["1", "2", "3"]