require_relative './player.rb'

class Game
  attr_reader :player_1, :player_2

  DEFAULT_DAMAGE = 10

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack(player_name, damage=DEFAULT_DAMAGE)
    player_name == player_1.name ? player_1.take_damage(damage) : player_2.take_damage(damage)
  end
end