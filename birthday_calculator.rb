require 'date'
# birth_date= DateTime.parse('24th Nov 2001 4:00:00 IST')
birth_date = DateTime.new(2000,2,2)
curr_date= DateTime.now()
puts birth_date
puts curr_date
birth_year = birth_date.year
curr_year = curr_date.year
if(birth_year % 400 == 0)
    puts "leap year"
    puts remain_days_birth = 366 - birth_date.yday 
elsif birth_year % 4 == 0 && birth_year % 100!=0
    puts "leap year"
    puts remain_days_birth = 366 - birth_date.yday
else
    puts "not a leap year"
    puts remain_days_birth = 365 - birth_date.yday # remaining days of 2001
end

puts prev_days_curr = curr_date.yday # days of 2023 till today
puts remain_days_in_between = remain_days_birth + prev_days_curr # 25th nov - today days
puts month = (remain_days_in_between/30) % 12 # returns months 
puts days = (remain_days_in_between%30.44)
puts years = (curr_year-birth_year).abs

puts remain_birth_min = 1440 - birth_date.minute + birth_date.hour*60
puts curr_date_min = curr_date.minute + curr_date.hour*60 
puts remain_minutes =( (curr_date_min - remain_birth_min).abs )/60

puts remain_hours_birth = 24 - birth_date.hour
puts curr_date.hour
puts remain_hours = (remain_hours_birth + curr_date.hour).abs % 24
hours = remain_hours
minutes = remain_minutes
puts "#{years} year, #{month} months, #{days.to_i} days excluding today, #{hours} hours and #{minutes} minutes"
