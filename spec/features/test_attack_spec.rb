feature 'Attack player' do 
  scenario 'Player 1 attacks Player 2' do 
    sign_in_and_play
    click_on 'Tom'
    expect(page).to have_content 'Tom: 40 HP'
  end
end