feature 'player name submission' do
  scenario 'players can enter names and see them on screen' do
    visit('/')
    fill_in "player_1_name", with: "Ben"
    fill_in "player_2_name", with: "Tom"
    
    click_button "Fight!"


    expect(page).to have_content "Ben vs. Tom"


  end
end