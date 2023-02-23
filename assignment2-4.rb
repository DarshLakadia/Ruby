b = "a"
a = b
c = "a"
puts  "#{a.object_id}"
puts b.object_id
puts c.object_id
d = a.eql?b
e = a.equal?b
f = a.equal?c
g = b.eql?c
puts "c is #{d}"
puts "d is #{e}"
puts "f is #{f}"
puts "d i #{g}"
