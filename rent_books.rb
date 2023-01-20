require_relative './nameable'
require_relative './app'
require_relative './person'
require_relative './students'
require_relative './teacher'
require_relative './books'
require_relative './rental'

def rent_book
  if @books.empty?
    puts 'No books avaliable.'
    puts 'Enter 4 to create a new book'
    puts ''
    select_list
  else
    puts 'Select a book from the list by number (not id)'
    @books.each_with_index do |book, index|
      puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}"
    end
    book_id = gets.chomp.to_i
    if @persons.empty?
      puts 'No persons avaliable.'
      puts 'Enter 3 to create a new person'
      select_list
    else
      puts 'Select a person from the list by number (not id)'
      @persons.each_with_index do |person, index|
        puts "#{index}) #{[person.class]} Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
    end
    person_id = gets.chomp.to_i
    print 'Date (yyyy/mm/d): '
    date_of_rental = gets.chomp
    @rentals.push(Rental.new(date_of_rental, @persons[person_id], @books[book_id]))
    puts 'success rental created'
    puts ''
    library_section
  end
end
