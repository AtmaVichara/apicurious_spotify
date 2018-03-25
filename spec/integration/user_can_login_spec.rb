require 'rails_helper'

RSpec.feature "user can log into spotify" do
  context "from the homepage" do
    scenario "user logs in" do
      visit root_path

      click_on "Sign into Spotify"

      expect(page).to have_content("You have successfully logged in.")
    end
  end
end
