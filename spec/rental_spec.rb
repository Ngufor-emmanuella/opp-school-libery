require_relative '../rental'

describe Rental do
  before :each do
    @rental = Rental.new 'date', 'person', 'book'
  end

  describe '#new' do
    it 'returns a new rental object' do
      @rental.should be_an_instance_of Rental
    end
  end

  describe '#date' do
    it 'returns the correct date' do
      @rental.date.should == 'date'
    end
  end

  describe '#person' do
    it 'returns the correct person' do
      @rental.person.should == 'person'
    end
  end

  describe '#book' do
    it 'returns the correct book' do
      @rental.book.should == 'book'
    end
  end