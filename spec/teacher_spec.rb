require_relative '../teacher'

describe Teacher do
  context 'When testing the Teacher class' do
    age = '40'
    name = 'Ali'
    specialization = 'AI'
    teacher = Teacher.new(age, name, specialization)

    it 'should return the age of the teacher' do
      expect(teacher.age).to eq age
    end

    it 'should return the name of the teacher' do
      expect(teacher.name).to eq name
    end

    it 'should return parent permission for teacher' do
      expect(teacher.specialization).to eq specialization
    end
  end
end
