def bubble_sort(array)
	(1...array.length).each do |iteration|
		(0...array.length-iteration).each do |index|
			if array[index] > array[index + 1]
				array[index], array[index + 1] = array[index + 1], array[index]
			end
		end
	end
	p array
end

bubble_sort([1,5,3,4,2])