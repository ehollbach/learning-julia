# Sieve it up baby
# go up to sqrt(n)

function sieve(n)
	primes = [];
	for i = 1:floor(sqrt(n))
		i = convert(Int64, i);
		for j = 2:i-1
			if i % j == 0 @goto notprime end
		end
		primes = append!(primes, [i]);
		@label notprime
	end
	primes
end

n = 600851475143
primes = sieve(n);

primes = reverse(primes)


for prime in primes
	if n % prime == 0
		println(prime);
	end
end
