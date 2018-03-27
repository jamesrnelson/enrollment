require 'rails_helper'

describe 'User' do
  context 'visits students index' do
    it 'should see a list of all students' do
      student1 = Student.create!(name: 'Jerry')
      student2 = Student.create!(name: 'Rodney')

      visit students_path

      expect(page).to have_content(student1.name)
      expect(page).to have_content(student2.name)
    end
  end
end
