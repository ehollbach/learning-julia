function solve(n)
	ans = 0;

	while true
		ans += 1;

		for i = 1:n
			if ans % i == 0 continue
			else @goto notdivisible
			end
		end
		
		return ans
		@label notdivisible
	end
end


println(solve(20));
