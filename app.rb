require_relative './rental'
require_relative './students'
require_relative './books'
require_relative './person'
require_relative './teacher'
require_relative './createstudents'
require_relative './createteachers'
require_relative './main'
require_relative './listrents'
require_relative './rent_much_book'

class App
  attr_accessor :books, :rentals, :persons

  def initialize
    @persons = []
    @books = []
    @rentals = []
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def select_list
    option = gets.chomp

    case option
    when '1' then list_all_books
    when '2' then list_all_people
    when '3' then create_a_person
    when '4' then create_a_book
    when '5' then create_a_rental
    when '6' then list_rentals
    when '7' then stop_application
    else
      puts 'Option not found. please select between 1 and 7'
      select_list
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity

  def libary_section
    puts ''
    puts 'Welcome to the libary'
    puts ''
    puts 'Please chose an option from the list of numbers:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a person with id'
    puts '7 - Exit'
    puts ''
    select_list
  end

  def list_all_books
    if @books.empty?
      puts 'No books found.'
      puts ''
      puts 'Enter 4 to create a new book'
      select_list
    else
      puts 'List of books in stock:'
      puts ''
      @books.each do |book|
        puts "Title: #{book.title}, Author: #{book.author}"
      end
      libary_section
    end
  end

  def list_all_people
    if @persons.empty?
      puts 'No people found'
      puts ''
      puts 'Enter 3 to create a new person'
      select_list
    else
      puts 'Found list of people:'
      puts ''
      @persons.each do |person|
        puts "#{[person.class]} Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
      libary_section
    end
  end

  def create_a_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    @books.push(Book.new(title, author))
    puts 'success book created!'
    libary_section
  end

  def create_a_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    person_no = gets.chomp

    case person_no
    when '1'
      create_student
    when '2'
      create_a_teacher
    else
      puts 'Invalid options'
      puts ''
    end
    libary_section
  end

  def create_a_rental
    rent_book
  end

  def list_rentals
    list_person_rentals
  end

  def end_application
    puts 'Nice having you hope to see you soon'
    exit
  end

  start_app = Main.new
  start_app.main
end
