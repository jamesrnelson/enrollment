require 'rails_helper'

describe Student, type: :model do
  describe 'Validations' do
    it 'should be valid with a name' do
      student1 = Student.new(name: 'Jerry')

      expect(student1).to be_valid
    end

    it 'should be invalid without a name' do
      student1 = Student.new(name: nil)

      expect(student1).to be_invalid
    end
  end
end
