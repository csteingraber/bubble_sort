def bubble_sort(array)
	(array.length - 1).times do |iteration|
		sorted = true
		(array.length - (1 + iteration)).times do |index|
			if array[index] > array[index + 1]
				array[index], array[index + 1] = array[index + 1], array[index]
				sorted = false
			end
		end
		if sorted
			return array
		end
	end
	array
end

def bubble_sort_by(array)
	(array.length - 1).times do |iteration|
		sorted = true
		(array.length - (1 + iteration)).times do |index|
			if yield(array[index], array[index + 1]) > 0
				array[index], array[index + 1] = array[index + 1], array[index]
				sorted = false
			end
		end
		if sorted
			return array
		end
	end
	array
end

answer = bubble_sort([3, 2, 1, 5, 3, 1, 2])
p answer

answer2 = bubble_sort_by(["Christopher", "Breana", "Sinai"]) do |left, right|
	left.length - right.length
end
p answer2