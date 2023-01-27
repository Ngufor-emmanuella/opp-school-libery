require_relative '../teacher'

describe Teacher do
  before :each do
    @teacher = Teacher.new 'specialization', 48, 'name', 'parent_permission'
  end

  describe '#new' do
    it 'returns a new teacher object' do
      @teacher.should be_an_instance_of Teacher
    end
  end

  describe '#specialization' do
    it 'returns the correct specialization' do
      @teacher.specialization.should == 'specialization'
    end
  end

  describe '#age' do
    it 'returns the correct age' do
      @teacher.age.should == 48
    end
  end

  describe '#name' do
    it 'returns the correct name' do
      @teacher.name.should == 'name'
    end
  end

  describe '@parent_permission' do
    it 'returns the correct parent_permission' do
      @teacher.parent_permission.should == 'true'
    end
  end
end