require 'rails_helper'


describe "User created a project" do 
  context "visit project create page" do 
    scenario "a user fill in fields and clicks submit" do 
      #need to add signed in user 
      visit new_project_path 
      
      name = "Ant Lee"

      fill_in :Name, with: name 
      fill_in :Description, with: "fun"
      fill_in :Goal, with: 500
      click_button "Create Project!" 

      expect(current_path).to eq(project_path(Project.find_by(name: "Ant Lee")) 
      expect(page).to have_content("Ant Lee")
      expect(page).to have_content("fun")
      exepct(page).to have_content(500)
    end 
  end 
end 
