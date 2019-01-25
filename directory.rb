student_count = 11
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
puts "The students of Villain Academy"
puts "-------------------------------"
students.each { |name| puts name }
# Print out number of students, without adding a new line
print "Overall we have #{students.count} great students."
