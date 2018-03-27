require 'rails_helper'

describe 'User' do
  context 'visits any page' do
    it 'should have links to student index and create page' do
      student1 = Student.create!(name: 'Al')

      visit student_path(student1)
      click_on 'Create a New Student'

      expect(page).to have_current_path('/students/new')

      click_on 'See all students'

      expect(page).to have_current_path('/students')
    end
  end
end
