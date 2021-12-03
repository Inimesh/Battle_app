class Player
  attr_reader :name, :hp

  def initialize(name, hp=50)
    @name = name
    @hp = hp
  end

  def take_damage
    @hp -= 10
  end
end