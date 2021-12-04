class Player
  attr_reader :name, :hp

  DEFAULT_DAMAGE = 10

  def initialize(name, hp=50)
    @name = name
    @hp = hp
  end

  def take_damage(damage=DEFAULT_DAMAGE)
    @hp -= damage
  end

  def attack(opponent)
    opponent.take_damage
  end
end