# First, add and print student names
students = [
  {name: "Dr Hannibal Lecter", cohort: "november"},
  {name: "Darth Vader", cohort: "november"},
  {name: "Nurse Ratched", cohort: "november"},
  {name: "Michael Corleone", cohort: "november"},
  {name: "Alex Delarge", cohort: "november"},
  {name: "The Wicked Witch of the West", cohort: "november"},
  {name: "The Terminator", cohort: "november"},
  {name: "Freedy Kruger", cohort: "november"},
  {name: "The Joker", cohort: "november"},
  {name: "Joffrey Baratheon", cohort: "november"},
  {name: "Norman Bates", cohort: "november"}
]

def print_header
  puts "The students of Villain Academy"
  puts "-------------------------------"
end

def print(students)
  students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)"  }
end

def print_footer(names)
  puts "Overall we have #{names.count} great students."
end

print_header
print(students)
print_footer(students)
