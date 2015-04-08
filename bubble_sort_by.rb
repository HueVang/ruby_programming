#Make condition to iterate through the array until
#the second to last element.
#In that condition, make a yield for two values(idx and idx +1)
#If idx + 1 is smaller, switch 'em around.
#Else keep on moving.
#The decrease the array range by 1 after each iteration.
#End
#left <=> right --> -1: left is smaller, 0: equal,
# 1: right is smaller

def bubble_sort_by(array)
	(1...array.length - 1).each do |iteration|
		(0...array.length - iteration). each do |index|
			if yield(array[index],array[index + 1]) > 0
				array[index],array[index + 1] = array[index + 1], array[index]
			end
		end
	end
	return array
end

puts "bubble_sort_by([5,3,1,2,4]): [1,2,3,4,5] == true" if (bubble_sort_by([5,3,1,2,4]) {|left,right| left <=> right}) == [1,2,3,4,5]