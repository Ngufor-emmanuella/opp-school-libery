class Book
  attr_accessor :title, :author, :rentals

  # setters and getters for instance variables
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    @rentals << rental
  end
end
