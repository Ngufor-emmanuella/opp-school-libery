require_relative '../teacher'

# describe Teacher do
#   context 'When testing the Teacher class' do
#     it 'should create a new teacher when teacher class is instantiated' do
#       teacher = Teacher.new(specialization, name, age)
#       expect(teacher.specialization).to eql 'Ruby is sweet'
#       expect(teacher.name).to eql 'Etomas'
#       expect(teacher.age).to eq (34)
#     end
#   end
# end

# require './teacher'

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

    # it 'should return if a teacher can use services is true' do
    #   expect(teacher.can_use_services?).to eq true
    # end
  end
end
