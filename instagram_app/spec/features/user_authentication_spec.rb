require 'rails_helper'

RSpec.feature "User", type: :feature do
  let!(:user) { create(:user) }

  scenario "User can sign up" do
    sign_up
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end

  context "/sign_in" do
    scenario "After signing out, user is forwarded to sign in" do
      sign_up
      click_link 'Sign out'
      expect(current_path).to eq "/users/sign_in"
    end
  end
end
