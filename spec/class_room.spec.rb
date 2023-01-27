require_relative '../class_room'

describe Classroom do
  before :each do
    @classroom = Classroom.new 'label', 'students'
  end

  describe '#new' do
    it 'returns a new classroom object' do
      @classroom.should be_an_instance_of Classroom
    end
  end

  describe '#label' do
    it 'returns the correct label' do
      @classroom.label.should == 'label'
    end
  end

  describe '#students' do
    it 'returns the correct students' do
      @classroom.students.should == 'students'
    end
  end
end
