require_relative '../lib/position_calculator'

RSpec.describe PositionCalculator do
  subject { described_class.new(input).run }

  let(:input) do
    [
      PositionCalculator::Command.new(:forward, 5),
      PositionCalculator::Command.new(:down, 5),
      PositionCalculator::Command.new(:forward, 8),
      PositionCalculator::Command.new(:up, 3),
      PositionCalculator::Command.new(:down, 8),
      PositionCalculator::Command.new(:forward, 2)
    ]
  end

  it { is_expected.to eq(150) }
end
