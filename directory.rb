# First, add and print student names
students = [
  "Dr Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex Delarge",
  "The Wicked Witch of the West",
  "The Terminator",
  "Freedy Kruger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
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
