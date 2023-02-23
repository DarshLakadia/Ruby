puts "6.1"

for i in (1..5).to_a.reverse
	for j in (1..5) 
		if (j<=i)
			print "*"
		end
	end
	puts ""
end



puts ""
puts "6.2"
for i in 1..5
	j=1
	while(j<=i)
		print j
		j+=1	
	end
	puts ""
end
