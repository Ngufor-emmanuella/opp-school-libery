require_relative './../../class_room'

describe Classroom do
  context 'testing the Classroom class' do
    it 'create a new classroom when Classroom class is initialised' do
      cl = Classroom.new('1E')
      expect(cl.label).to eq '1E'
    end
  end
end
