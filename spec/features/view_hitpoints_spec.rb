feature 'hitpoint tracker' do
  scenario "players can view eachothers' starting hitpoints" do
    visit('/')

    sing_in_and_play() # helper

    expect(page).to have_content("Ben: 50 HP")
    expect(page).to have_content("Tom: 50 HP")

  end
end