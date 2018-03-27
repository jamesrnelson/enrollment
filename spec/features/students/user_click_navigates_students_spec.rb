require 'rails_helper'

describe 'User' do
  context 'clicks on student name' do
    it 'should take user to student show page' do
      student1 = Student.create!(name: 'Jim C.')
      student2 = Student.create!(name: 'Bill M.')

      visit students_path

      click_on student1.name

      expect(page).to have_content('Student Information:')
      expect(page).to have_content(student1.name)
      expect(page).to_not have_content(student2.name)
    end
  end
end
