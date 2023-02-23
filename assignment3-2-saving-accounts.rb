class SavingAccount
	def interest_rate(amnt)
		case 
		when amnt>0 && amnt<1000
			0.5
		when amnt>1000 && amnt<5000
			1.621
		when amnt>5000
			2.475
		else
			-3.213
		end
	end
			#when 0<=rate && rate<=1000 <-- This g
			#then puts 0.5
=begin
			when 0...1000
				0.5
			when (1000...5000)
				1.621
			when (5000...)
				2.475
			else
				-3.213
		end
=end
	
	def annual_balance_update(principle)
		rate = interest_rate(principle)
		principle= principle + (principle*rate*1)/100
		principle
	end

	def years_before_desired_balance(current_p,desired_p)
		count = 0
		while current_p < desired_p
			current_p = annual_balance_update(current_p)
			count += 1
		end
		puts count
	end

end
s1 = SavingAccount.new
s1.interest_rate(1500)
s1.annual_balance_update(200.75)
s1.years_before_desired_balance(200.75,214.88)
