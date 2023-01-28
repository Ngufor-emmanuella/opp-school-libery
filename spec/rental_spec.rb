require_relative '../rental'
require_relative '../teacher'
require_relative '../books'

describe Book do
  context 'When testing the Rental' do
    it 'should create a new Rental class on being initialised' do
      teacher = Teacher.new('Roland', 35, 'Willy Rovo')
      book = Book.new('title', 'author')
      rental = Rental.new('2022-09-09', teacher, book)
      expect(rental.book.rental.length).to eq 1
      expect(rental.person.rental.length).to eq 1
    end
  end
end
