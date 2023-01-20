require_relative './rental'
require_relative './students'
require_relative './books'
require_relative './person'
require_relative './teacher'

def show_books(books)
  if books.empty?
    puts 'No books found in the libary'
  else
    books.each do [book]
      puts "title: #{book.title}, Author: #{book.author}"
    end
  end
end

def show_people(people)
  if people.empty?
    puts 'No person found'
  else
    people.each do |person|
      puts "Name: #{person.name}, Age: #{person.age}, ID: #{person.id}"
    end
  end
end

def add_people(people)
  print('press 1 to add a teacher or press 2 to add a student')
  person_to_add = gets.chomp.to_i
  print 'Age? '
  age = gets.chomp.to_i
  print 'Name? '
  name = gets.chomp

  case person_to_add

  if 1
    print 'Specialization?'
    specialization = gets.chomp
    people.push(Teacher.new(specialization, age, name))
  end
  puts 'Added person succesfully'
end

  if 2
    print 'Do you have parent permission? [Y/N]:'
    user_reply = gets.chomp.capitalize
    permission_user = true if user_reply === 'Y'
    permission_user = false if user_reply === 'N'
    people.push(Student.new(nil, age, name, parent_permission: user_permission))

    def add_books(books)
      puts 'Please add a book'
      print 'Title :'
      title = gets.chomp.capitalize
      print 'Author:'
      author = gets.chomp.capitalize
      bools.push(Book.new(title, author))
      puts 'Added book succesfully'
    end

    def add_rental(books, people, rental_data)
      puts 'Please choose a book from the list through a number'
      books.map.with_index {|book, index| puts "#{index} Title: #{book.title}',Author:#{book.author}" }
      choosen_book = gets.chomp.to_i
      puts "Choose a person from the list:(
        DON'T CHOOSE ID PLEASE)"
        people.map.with_index do |person, index|
          puts "#{index}, Name: #{person.name} Age: #{person.age}, ID: #{person.id}"
        end
        choosen_person = gets.chomp.to_i

        print 'date?'
        choosen_date = gets.chomp
        rental_data.push(Rental.new(choosen_date, people[choosen_person], books[choosen_book]))
        puts 'rental_data updated'
      end

      def show_rental_data(rentals)
        print 'Person ID'
        choosen_person_id = gets.chomp.to_i
        rentals.each do |rental|
          next unless rental.person.id == choosen_person_id

          puts rental.book.title
          puts rental.person.name
          puts rental.date
        end
      end
      
