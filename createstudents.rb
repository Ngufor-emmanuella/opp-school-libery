require_relative './person'
require_relative './nameable'
require_relative './students'


def create_a_student
  print 'Age: '
  age = gets.chomp

  print 'Name: '
  name = gets.chomp

  print 'Does the student has parent permission? [Y/N]: '
  permission = gets.chomp

  case permission
  when 'y', 'Y'
    @persons.push(Student.new(true, age, name))
    puts 'Sucess student created'
  when 'n', 'N'
    @persons.push(Student.new(false, age, name))
    puts 'Success student created'
  else
    puts 'Not permitted (Enter Y/N)'
    libary_section
  end
end
