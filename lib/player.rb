class Player
  attr_reader :name, :hp

  DEFAULT_HP = 50
  DEFAULT_DAMAGE = 10

  def initialize(name, hp=DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def take_damage(damage=DEFAULT_DAMAGE)
    @hp -= damage
  end
end