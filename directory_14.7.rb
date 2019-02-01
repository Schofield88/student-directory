@cohort = :February
require 'csv'

def print_header

  puts "The students of Villain Academy"
  puts "-------------------------------"

end

def print_student_list

  CSV.foreach (@csv_name) { |entry| puts "#{entry[0]}, #{entry[1]} cohort." }

end

def print_footer

  puts "Overall we have #{CSV.open(@csv_name, "r") { |file| file.readlines.size }} great students."

end

def input_students

  puts "Please enter the names of the students."
  puts "Press enter twice to exit."
  name = STDIN.gets.chomp
  while !name.empty?
    write_to_students(name)
    csv_size = CSV.open(@csv_name, "r") { |file| file.readlines.size }
    puts "Now we have #{csv_size} students."
    name = STDIN.gets.chomp
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
  print_footer

end

def process(selection)

  case selection
    when "1" then input_students
    when "2" then show_students
    when "9" then exit
    else
      puts "Please select a valid command."
    end

end

def try_load_students

  if !ARGV.first.nil?
    File.exists?(ARGV.first) ? @csv_name = ARGV.first : (puts "Sorry, #{ARGV.first} does not exist.".center(80)); exit
  else
    @csv_name = "students.csv"
  end

end

def write_to_students(name)

  CSV.open(@csv_name, "a") { |csv| csv << [name, @cohort.intern] }

end

def interactive_menu

  loop do
    print_menu
    process(STDIN.gets.chomp)
  end

end

try_load_students
interactive_menu
