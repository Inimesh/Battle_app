feature 'player name submission' do
  scenario 'players can enter names and see them on screen' do
    sign_in_and_play() # helper

    expect(page).to have_content "Ben vs. Tom"


  end
end