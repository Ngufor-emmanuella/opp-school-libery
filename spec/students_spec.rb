require_relative '../students'

describe Student do
  context 'When testing the Student' do
    it 'should create a new Student when student is initialised' do
      student = Student.new(24, 'Willy Rovo', true)
      expect(student.age).to eq 24
      expect(student.name).to eq 'Willy Rovo'
    end
  end
end
