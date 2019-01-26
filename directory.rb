# First, add and print student names
students = [
  ["Dr Hannibal Lecter", :november],
  ["Darth Vader", :november],
  ["Nurse Ratched", :november],
  ["Michael Corleone", :november],
  ["Alex Delarge", :november],
  ["The Wicked Witch of the West", :november],
  ["The Terminator", :november],
  ["Freedy Kruger", :november],
  ["The Joker", :november],
  ["Joffrey Baratheon", :november],
  ["Norman Bates", :november]
]

def print_header
  puts "The students of Villain Academy"
  puts "-------------------------------"
end

def print(names)
  names.each { |name| puts name }
end

def print_footer(names)
  puts "Overall we have #{names.count} great students."
end

print_header
print(students)
print_footer(students)
