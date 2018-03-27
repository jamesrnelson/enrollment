require 'rails_helper'

describe 'User' do
  context 'visits a specific student page' do
    it 'should see the information for that student' do
      student1 = Student.create!(name: 'DL')
      student2 = Student.create!(name: 'Bruce')

      visit student_path(student2)

      expect(page).to have_content(student2.name)
      expect(page).to_not have_content(student1.name)
    end
  end
end
