require 'player'

describe Player do
  subject { described_class.new("Tom") }
  it 'returns its name' do
    expect(subject.name).to eq 'Tom'
  end

  it 'returns its HP' do
    expect(subject.hp).to eq 50
  end

  describe '#take_damage' do
    it 'reduces hp by 10 by default' do
      expect { subject.take_damage }.to change { subject.hp }.by -Player::DEFAULT_DAMAGE
    end
  end

end