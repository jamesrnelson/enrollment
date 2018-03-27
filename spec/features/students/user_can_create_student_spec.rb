require 'rails_helper'

describe 'User' do
  context 'visits create student form' do
    it 'should create student and redirect to that student page' do
      visit new_student_path

      fill_in 'student[name]', with: 'Norm'
      click_on 'Create Student'

      expect(page).to have_content('Student Information:')
      expect(page).to_not have_content('This is a list of students')
    end
  end
end
