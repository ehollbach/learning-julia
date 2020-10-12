ans = begin
	numbers = 1:999
	sum([number for number in numbers if number % 3 == 0 || number % 5 == 0])
end

println(ans);
