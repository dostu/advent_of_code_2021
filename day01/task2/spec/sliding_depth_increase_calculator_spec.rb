require_relative '../lib/sliding_depth_increase_calculator'

RSpec.describe SlidingDepthIncreaseCalculator do
  subject { described_class.new(input).run }

  let(:input) { [199, 200, 208, 210, 200, 207, 240, 269, 260, 263] }

  it { is_expected.to eq(5) }

  context 'when only one depth measurement is provided' do
    let(:input) { [199] }

    it { is_expected.to eq(0) }
  end
end
