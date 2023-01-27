require_relative './../../books'

describe Book do
  context 'testing the Book class' do
    it 'create a new book when book class is initialised' do
      book = Book.new('title', 'author')
      expect(book.title).to eq 'title'
      expect(book.author).to eq 'author'
    end
  end
end
