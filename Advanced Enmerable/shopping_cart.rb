cart=[
    {item:"pen", qty:3, price:20},
    {item:"Book", qty:2, price:150}]
lines = cart.map {|i| i[:qty]*i[:price]}
total=lines.sum
final=total-(total*0.10)
p lines
puts total
puts final