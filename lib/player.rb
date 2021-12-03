class Player
  attr_reader :name, :hp

  def initialize(name, hc=50)
    @name = name
    @hp = hp
  end

  def take_damage
    @hp -= 10
  end
end