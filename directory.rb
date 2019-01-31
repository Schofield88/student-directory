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

@students = []

def print_header

  puts "The students of Villain Academy"
  puts "-------------------------------"

end

def print_student_list

  @students.each { |element| puts "#{element[:name]} (#{element[:cohort]} cohort)"  }

end

def print_footer(names)

  puts "Overall we have #{names.count} great students."

end

def input_students

  puts "Please enter the names of the students."
  puts "Press enter twice to exit."
  name = gets.chomp
  while !name.empty?
    @students << {name: name, cohort: :Feburary}
    puts "Now we have #{@students.count} students."
    name = gets.chomp
  end

end

def print_menu

  puts ""
  puts "=" * 30
  puts "1. Input the students."
  puts "2. Show the list of students."
  puts "9. Exit."
  puts "=" * 30
  puts ""

end

def show_students

  print_header
  print_student_list
  print_footer(@students)

end

def process(selection)

  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit
    else
      puts "Please select a valid command."
    end

end

def save_students

  file = File.open("students.csv", "w") # open the file for writing
  @students.each { |student| # iterate over the students
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line }
  file.close

end

def interactive_menu

  loop do
    print_menu
    process(gets.chomp)
  end

end

=begin
students = input_students
print_header
print(students)
print_footer(students)
=end

interactive_menu
