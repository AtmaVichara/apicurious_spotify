require 'rails_helper'

RSpec.feature "user can log into spotify" do
  context "from the homepage" do
    scenario "user logs in" do
      stub_omniauth
      visit root_path

      click_on "Sign into Spotify"
      user = User.first
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      expect(page).to have_content("You have successfully logged in jmrj222")
      expect(page).to have_link("Logout")

      click_on "Logout"

      expect(page).to have_link("Sign into Spotify")
    end
  end
end
