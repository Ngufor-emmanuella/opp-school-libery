require_relative '../person'

describe Person do
  before :each do
    @person = Person.new 'name', 18, 'parent_permission'
  end

  describe '#new' do
    it 'returns a new person object' do
      @person.should be_an_instance_of Person
    end
  end

  describe '#age' do
    it 'returns the correct age' do
      @person.age.should == 18
    end
  end

  describe '#name' do
    it 'returns the correct name' do
      @person.name.should == 'name'
    end
  end

  describe '#parent_permission' do
    it 'returns the correct parent_permission' do
      @person.parent_permission.should == 'true'
    end
  end
end
