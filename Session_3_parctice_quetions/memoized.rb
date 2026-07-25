def fibo(n,memo={})
  return n if n<=1
  memo[n]||=(n-1)+(n-2)
end

print"Entr the number to find the memoized  : "
n=gets.chomp.to_i
puts fibo(n)