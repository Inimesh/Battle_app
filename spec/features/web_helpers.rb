def sign_in_and_play
  visit '/'
  fill_in "player_1_name", with: "Ben"
  fill_in "player_2_name", with: "Tom"
    
  click_button "Fight!"
end