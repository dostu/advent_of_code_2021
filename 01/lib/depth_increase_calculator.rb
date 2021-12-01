class DepthIncreaseCalculator
  attr_reader :depths

  def initialize(depths)
    @depths = depths
  end

  def run
    depths.each_cons(2).count { |a, b| a < b }
  end
end
