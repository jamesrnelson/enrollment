require 'rails_helper'

describe 'User' do
  context 'visits students index page and clicks delete' do
    it 'should delete that student name and stay on index' do
      student1 = Student.create!(name: 'Zach')

      visit students_path

      expect(page).to have_content(student1.name)

      click_on 'Delete'

      expect(page).to_not have_content(student1.name)
    end
  end
end
