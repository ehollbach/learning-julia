# 2, 3, 5, 7, 11, 13, 17, 23

function primes(n)
	result = []
	i = 1
	p = 1
	while i <= n
		p = p + 1
		for j = 2:p-1
			if p % j == 0 @goto notprime end
		end
		primes = append!(result, [p]);
		i = i + 1
		@label notprime
	end
	result
end


println(primes(10001)[end]);
