a = 5
i = 0
while i < a do
	if i == 3 then
		break # break the entire loop
	end
	puts "i : #{i}"
	i+=1
end

for j in 1..5
	if j==2 then
		next # skip the 2 and iteration will not go below it & starts with 3
	end
	puts "j is : #{j}"
end	
