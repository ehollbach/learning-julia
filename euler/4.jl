# Palindrome checker in Julia?

function is_palindrome(s)
	for i = 1:length(s)/2
		i = convert(Int64, i);
		if s[i] != s[end-i+1]
			return false
		end
	end

	return true
end


# println(is_palindrome("foof"));
# println(is_palindrome("woof"));
# println(is_palindrome("racecar"));


# solve the problem
solve() = begin
	result = 0
	for i = 1:999
		for j = 1:999
			if is_palindrome(string(i * j))
				if i * j > result
					result = i * j;
				end
			end
		end
	end
	result
end

println(solve());
