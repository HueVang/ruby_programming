def stock_picker arr
	idx = 0
	days = [0,0]
	profit = 0

	while idx < arr.length
		idx2 = idx + 1
		while idx2 < arr.length
			if (arr[idx2] - arr[idx]) > profit
				profit = (arr[idx2] - arr[idx])
				days[0], days[1] = idx, idx2
				idx2 += 1
			else
				idx2 += 1
			end
		end
		idx += 1
	end

	p days
end

stock_picker([16, 31, 15, 19, 6, 18, 12, 42])