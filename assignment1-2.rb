CITY= "Ahmedabad" 
class User
	def getcity
		puts "User lives in #{CITY}"
	end
end

class Company
		def getcity
		puts "Company is located in #{CITY}"
	end
end

user1 = User.new()
user1.getcity
company1 = Company.new()
company1.getcity	
