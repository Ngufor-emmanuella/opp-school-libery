class Rentals
  attr_accessor :date, :person, :book

  def initialize(date)
    @date = date
    @person = person
    person.rental_data << self
    @book = book
    book.rental_data << self
  end
end
