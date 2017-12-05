require 'test_helper'

feature "visiting the homepage" do
    scenario "the visitor sees the bicycle shop name" do
        visit root_path
        expect(page).to have_text("CycleHub")
    end
end