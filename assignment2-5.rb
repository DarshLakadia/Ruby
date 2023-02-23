arr = Array(1...100)
puts arr.include?(100)
#puts arr
for i in arr
	if i % 7 ==0
		print "#{i} "
	end
end
