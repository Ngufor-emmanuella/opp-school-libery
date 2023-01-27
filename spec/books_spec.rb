require_relative '../books'

describe Book do
  before :each do
    @book = Book.new 'title', 'author'
  end

  describe '#new' do
    it 'returns a new book object' do
      @book.should be_an_instance_of Book
    end
  end

  describe '#title' do
    it 'returns the correct title' do
      @book.title.should eql 'title'
    end
  end

  describe '#author' do
    it 'return the correct author' do
      @book.author.should eql 'author'
    end
  end
end
