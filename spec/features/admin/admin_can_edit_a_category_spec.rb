require 'rails_helper'

describe 'Admin edits category' do
  context 'category already exists' do
    scenario 'click edit, enter new info, sumbit' do
      category = create(:category, name: 'Computer Science')

      visit admin_categories_path

      click_button 'Edit'
      expect(current_path).to eq(edit_admin_category_path(category))

      fill_in 'Name', with: 'Knitting'
      click_button 'Submit'

      expect(current_path).to eq(admin_categories_path)
      expect(page).to have_content('Knitting')
    end
  end
end
