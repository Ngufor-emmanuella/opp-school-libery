class Books
  attr_accessor :title, :author, :rentals

  # setters and getters for instance variables
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental_data(rental)
    @rentals << rental
  end
end
