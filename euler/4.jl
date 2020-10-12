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
