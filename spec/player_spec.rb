require 'player'

describe Player do
  it 'returns its name' do
    player_1 = Player.new('Tom')
    expect(player_1.name).to eq 'Tom'
  end

  it 'returns its HP' do
    player_1 = Player.new('Tom')
    expect(player_1.hp).to eq 50
  end

  describe '#take_damage' do
    it 'reduces hp by 10' do
      player_1 = Player.new("Tom")
      expect { player_1.take_damage }.to change { player_1.hp }.by -10
    end
  end
end