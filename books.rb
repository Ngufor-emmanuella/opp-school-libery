class Books
  attr_accessor :title, :author, :rental_data

  # setters and getters for instance variables
  def initialize(title, author)
    @title = title
    @author = author
    @rental_data = []
  end

  def add_rental_date(date, person)
    Rental.new(date, self, person)
  end
end
