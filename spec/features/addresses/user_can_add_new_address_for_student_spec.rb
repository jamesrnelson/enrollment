require 'rails_helper'

describe 'User' do
  context 'navigates to new student address and submits new address' do
    it 'should create a new address and redirect to student show page' do
      student1 = Student.create!(name: 'Glen')

      visit new_student_address_path(student1)

      fill_in 'Description', with: 'Home'
      fill_in 'Street address', with: '123 Main St.'
      fill_in 'City', with: 'Anytown'
      fill_in 'State', with: 'PA'
      fill_in 'Zip code', with: 54321
      click_on 'Create Address'

      expect(page).to have_content('Student Information:')
      expect(page).to have_content(student1.name)
      expect(page).to have_content('123 Main St., Anytown, PA 54321')
    end
  end
end
