puts "Give Details about your Resume"

puts "Enter your Name"
name = gets.chomp

puts  "Enter College Name"
college = gets.chomp

puts  "Enter Skills"
skills = gets.chomp

puts  "Enter Qualification"
degree = gets.chomp
puts  "Enter email address"
email = gets.chomp

puts "Enter Address"
address = gets.chomp

resume_file = File.new("resume.txt", "a+")
resume_file.write("Name: #{name}\n")
resume_file.write("College: #{college}\n")
resume_file.write("Skills: #{skills}\n")
resume_file.write("Qualification: #{degree}\n")
resume_file.write("Email-Address: #{email}\n")
resume_file.write("Address: #{address}\n")
resume_file.write("**************************")
resume_file.close