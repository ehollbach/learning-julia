fib(n) = if n > 2 fib(n-1) + fib(n-2) else 1 end

# Solve the problem
#println(fib(34));  # all fibs less than 4e6
println(sum([fib(n) for n in 1:34 if fib(n) < 4e6 && fib(n) % 2 == 0]))
