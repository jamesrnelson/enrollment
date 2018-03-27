require 'rails_helper'

describe 'User' do
  context 'visits edit student page, edits info, and clicks submit' do
    it 'should edit the student info and redirect to student page' do
      student1 = Student.create!(name: 'Gabriel')

      visit student_path(student1)

      expect(page).to have_content('Gabriel')
      expect(page).to_not have_content('Patton')

      visit edit_student_path(student1)

      fill_in 'Name', with: 'Patton'
      click_on 'Update Student'

      expect(page).to have_content('Student Information:')
      expect(page).to have_content('Patton')
      expect(page).to_not have_content('Gabriel')
    end
  end
end
