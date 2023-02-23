require 'json'
file = File.open("array.txt","r")

# content = file.sysread(100).chomp.split("]")[0].split("[")[1].split(", ")
content = JSON.parse(file.read);
# puts content
hash = {}
i=0
while i < content.length
  if hash.has_key? content[i].to_i
    hash[content[i].to_i] += 1
  else
    hash[content[i].to_i] = 1
  end
  i+=1
end
proc = Proc.new{ output = File.new("output.txt","w+")
hash.each do
  |k,v|
  if v < 2
    output.write(k.to_s+"=>"+v.to_s+" ")
    hash.delete(k)
  end
end
}
proc.call

puts hash
