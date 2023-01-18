class Books
  attr_accessor :title, :author
  attr_reader :rentals

  # setters and getters for instance variables
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    @rentals.push(rental)
    rental.book = self
  end
end