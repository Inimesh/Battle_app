require 'game'
require 'player'

describe Game do
  let(:player_1) { instance_double Player, name: "Ben" }
  let(:player_2) { instance_double Player, name: "Tom" }
  subject { described_class.new(player_1, player_2) }

  describe '#attack' do
    it 'does damage to the specified player' do
      expect(player_2).to receive(:take_damage)
      subject.attack(player_2)
    end
  end
end