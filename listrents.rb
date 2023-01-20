require_relative './app'
require_relative './person'
require_relative'./students'
require_relative './teacher'
require_relative'./nameable'
require_relative './books'
require_relative './rental'

def person_rentals_list
  if @persons.empty?
    puts 'No person found'
    puts 'Enter 3 to add a person. later, create rentals for them'
    select_list
  else
    puts 'List of people present:'
    puts ''
    @persons.each do |person|
      puts "#{[person.class]} Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    puts ''
    print 'ID of person: (Choose "ID" from the list above)'
    puts ''
    person_id = gets.chomp.to_i
    puts ''
    puts 'Rentals:'
    @rentals.each do |rental|
      puts rental.person.id
      puts person_id
      if rental.person.id.to_i == person_id
        puts "Date: #{rental.date}, Book: #{rental.book.title} by #{rental.book.author}"
      else
        puts 'Rentals not found!'
        puts ''
        puts 'To create rental for a person enter 5'
        select_list
      end
    end
    libary_section
  end
end
