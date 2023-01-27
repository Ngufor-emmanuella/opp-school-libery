require_relative '../students'

describe Student do
  before :each do
    @student = Student.new (nil, 18, 'Royce', 'parent_permission')
  end

  describe '#new' do
    it 'returns a new student object' do
      @student.should be_an_instance_of Student
    end
  end

  describe '#age' do
    it 'returns the correct age of the student' do
      @student.age.should == 18
    end
  end

  describe '#name' do
    it 'returns the correct name of the student' do
      @student.name.should == 'Royce'
    end
  end

  describe '#classroom' do
    it 'returns the correct classroom' do
      @student.classroom.should.nil?
    end
  end
end
