require_relative './../../decorator'
require_relative './../../person'

describe Decorator do
  context 'testing the Decorator class' do
    it 'create a new decorator when Decorator class is initialised' do
      p = Person.new(34, 'Duane')
      decorator = Decorator.new(p)
      expect(decorator.correct_name).to eq 'Duane'
    end
  end

  context 'testing the Decorator class' do
    it 'create a new decorator when Decorator class is initialised' do
      p = Person.new(34, 'DuaneStevenson')
      decorator = TrimmerDecorator.new(p)
      expect(decorator.correct_name).to eq 'DuaneSteve'
    end
  end

  context 'testing the Decorator class' do
    it 'create a new decorator when Decorator class is initialised' do
      p = Person.new(34, 'duane')
      decorator = CapitalizeDecorator.new(p)
      expect(decorator.correct_name).to eq 'Duane'
    end
  end
end
