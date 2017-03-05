require 'spec_helper'

RSpec.feature "confirms opponent move" do
  scenario "gives a confirmation message" do
    visit "/"
    fill_in("player_name", with: "Chris")
    click_button("Submit")
    click_button("Begin Game")
    click_button("Rock")
    expect(page).to have_text("Your opponent has selected")
  end
end
