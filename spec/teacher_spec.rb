require_relative './../../teacher'

describe Teacher do
  context 'When testing the Teacher class' do
    it 'should create a new teacher when teacher class is instantiated' do
      teacher = Teacher.new('Ruby is sweet', 34, 'Etomas')
      expect(teacher.specialization).to eq 'Ruby is sweet'
      expect(teacher.name).to eq 'Etomas'
      expect(teacher.age).to eq 34
    end
  end
end
