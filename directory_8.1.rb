=begin
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
=end

def print_header

  puts "The students of Villain Academy"
  puts "-------------------------------"

end

def print(students)

  students.each { |student|
    puts "#{students.index(student) + 1}: #{student[:name]} (#{student[:cohort]} cohort)"  }

end

def print_footer(names)

  puts "Overall we have #{names.count} great students."

end

def input_students

  puts "Please enter the names of the students."
  puts "Press enter twice to exit."
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while name is not empty, repeat this code
  while !name.empty?
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students."
    # get another name from the user
    name = gets.chomp
  end
  # return the array of input_students
  students

end

students = input_students
print_header
print(students)
print_footer(students)
