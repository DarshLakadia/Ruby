require 'json'
file = File.open("phonebook.txt","r")
dictonary = eval(file.read)
puts dictonary.class
puts "Enter your Choice"
puts "1. Find number with person's name"
puts "2. Save New number with name"
puts "3. Delete number"
choice = gets.chomp.to_i
write_to_file = lambda{
  write_file=File.open("phonebook.txt","w") do |file|
    file.puts dictonary
  end  
}

case 
when choice ==1
  puts "Enter name "
  name = gets.chomp
  if dictonary.has_key?name.to_sym
    puts dictonary[name.to_sym]
  else
    puts "No name found"
  end
when choice ==2
  puts "2. choice"
  puts "Enter Name"
  name = gets.chomp
  puts "Enter mobile number"
  number = gets.chomp

  if dictonary.has_key?name.to_sym
    puts "Already name is present"

  elsif dictonary.key(number) == nil
    hash = {}
    hash[name.to_sym] = number  
    dictonary=dictonary.merge(hash)
    write_to_file.call
  else
    puts "Already number is present"
  end
when choice ==3
  puts "Enter Choice"
  puts "1. Delete by Name"
  puts "2. Delete by Number"
  option = gets.chomp.to_i
  case 
  when option ==1
    puts "Enter Name you want to delete"
    name = gets.chomp
    if dictonary.has_key?name.to_sym
      dictonary.delete(name.to_sym)
      write_to_file.call
    else
      puts "Not Found Name"
    end
  when option ==2
    puts "Enter Number you want to delete"
    number = gets.chomp
    if dictonary.has_key?dictonary.key(number)
      dictonary.delete(dictonary.key(number))
      write_to_file.call      
    else
      puts "Not Number Found"
    end
  end
else
  puts "nothing..."
end