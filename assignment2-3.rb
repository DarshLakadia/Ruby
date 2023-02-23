class RedoRetry
	def initialize(num)
		@u_in = num
	end
	def print_i		
		for i in 0..6
			if i>@u_in then	
				puts "ip is : #{@u_in} & i is : #{i}"
				i += 1
				redo #  iterate this block until condition is satisfied & after that for loop will iterate 
			end
		end
	end
end

c = RedoRetry.new(3)
c.print_i
