feature 'hitpoint tracker' do
  scenario "players can view eachothers' starting hitpoints" do
    visit('/')
    fill_in "player_1_name", with: "Ben"
    fill_in "player_2_name", with: "Tom"
    click_button "Fight!"

    expect(page).to have_content("Ben: 50 HP")
    expect(page).to have_content("Tom: 50 HP")

  end
end