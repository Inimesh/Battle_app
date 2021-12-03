def sing_in_and_play
  fill_in "player_1_name", with: "Ben"
  fill_in "player_2_name", with: "Tom"
    
  click_button "Fight!"
end