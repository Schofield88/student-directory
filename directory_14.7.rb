@students = []
@cohort = :February
require 'csv'

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
  name = STDIN.gets.chomp
  while !name.empty?
    write_to_students(name)
    csv_size = CSV.open("students.csv", "r") { |file| file.readlines.size }
    puts "Now we have #{csv_size} students."
    name = STDIN.gets.chomp
  end

end

def print_menu

  puts ""
  puts "=" * 30
  puts "1. Input the students."
  puts "2. Show the list of students."
  puts "3. Save the list of students to csv."
  puts "4. Load student directory from csv."
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
    when "1" then input_students
    when "2" then show_students
    when "3" then save_students
    when "4" then load_students
    when "9" then exit
    else
      puts "Please select a valid command."
    end

end

def save_students

  File.open("students.csv", "w") do |file|
  @students.each { |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line }
  end
  puts "Student directory saved."

end

def load_students(filename = "students.csv")

  File.open(filename, "r") do |file|
    file.readlines.each { |line|
      name, cohort = line.chomp.split(",")
      write_to_students(name) }
  end
  puts ("*" * 30).center(80)
  puts "Student directory loaded.".center(80)
  puts "Loaded #{@students.count} from #{filename}".center(80)
  puts ("*" * 30).center(80)

end

def try_load_students

  filename = ARGV.first
  if ARGV.first.nil?
    load_students
  else
    File.exists?(filename) ? load_students(filename) : (puts "Sorry, #{filename} does not exist.".center(80)); exit
  end

end

def write_to_students(name)

  CSV.open("students.csv", "a") { |csv| csv << [name: name, cohort: @cohort] }

end

def interactive_menu

  loop do
    print_menu
    process(STDIN.gets.chomp)
  end

end

try_load_students
interactive_menu
