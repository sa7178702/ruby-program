# A = [1,2,3,4,5,6,7,8,9,10]
# B = 15

# if a[one element] + a[second element]
	# Then extract the index position of the all pair.


	def cal(arr , group , n)
		res = []
		arr.combination(n).each do |ar|
			if ar.sum == group
				res << ar.map { |a| arr.index(a)}
			end
		end
		res
	end

	p cal([1,2,3,4,5,6,7,8,9,10], 15 ,2)
	
	p "Real array [1,2,3,4,5,6,7,8,9,10]"
	