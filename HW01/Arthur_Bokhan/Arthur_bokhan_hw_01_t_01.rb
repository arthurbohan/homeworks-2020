#take hours
puts "Put hours"
hours = gets.to_i

#take minuts
puts "Put minutes"
minutes = gets.to_i

#create method with hours and minutes
def calculation (hours, minutes)
  #value of hours can't be more then 12 and less then 0
  if hours < 0 || hours > 12
    raise "This #{hours} isn't valid!"
    #value of minutes can't be more then 60 and less then 0
    elsif minutes < 0 || minutes > 60
      raise "This #{minutes} isn't valid!"
  end
  #count
 actualminutes = minutes * 6
 actualhours = (hours * 30) + (minutes / 2.0)
 (actualhours - actualminutes).abs
end

result = calculation(hours,minutes)
puts "Angle is #{result}"
