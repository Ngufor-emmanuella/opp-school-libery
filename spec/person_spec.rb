require_relative './../../person'

describe Person do
  context 'When testing the Person' do
    it 'create a new book when person class is initialised' do
      person = Person.new(34, 'Duane David')
      id = person.id
      expect(person.age).to eq 34
      expect(person.name).to eq 'Duane David'
      expect(person.id).to eq id
    end
  end
end