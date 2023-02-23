a = true
b = false
c1 = a && b # this will result false because it first calculate right side of computation
c2 = a and b # this will result true cause precedence of = > and so it will calc c2 = a
c3 = (a and b) # this will result false cause precedence of () > =,and /  
puts " c1 : #{c1} c2 : #{c2}" 
