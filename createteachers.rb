require './teacher'
require './person'
require './nameable'

def create_a_teacher
  print 'Age: '
  age = gets.chomp.to_i

  print 'Name: '
  name = gets.chomp

  print 'Specialization: '
  specialization = gets.chomp

  @persons.push(Teacher.new(age, specialization, name))
  puts 'success Teacher created!'
  puts ''
end
